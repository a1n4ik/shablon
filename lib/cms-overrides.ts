import fs from "node:fs";
import path from "node:path";
import type {
  Article,
  ClinicInfo,
  ContactInfo,
  Doctor,
  FAQItem,
  PriceCategory,
  Review,
  Service,
  ServiceCategory,
} from "@/types";
import { getDb } from "@/lib/db";

type CmsOverrides = {
  clinicInfo?: ClinicInfo;
  contactInfo?: ContactInfo;
  services?: Service[];
  serviceCategories?: ServiceCategory[];
  doctors?: Doctor[];
  articles?: Article[];
  faqs?: FAQItem[];
  reviews?: Review[];
  priceCategories?: PriceCategory[];
};

const overridesPath = path.join(process.cwd(), "content", "cms-overrides.json");

function readOverridesFile() {
  try {
    if (!fs.existsSync(overridesPath)) {
      return {};
    }

    const raw = fs.readFileSync(overridesPath, "utf-8").trim();

    if (!raw) {
      return {};
    }

    return JSON.parse(raw) as CmsOverrides;
  } catch (error) {
    console.error("Failed to read cms-overrides.json", error);
    return {};
  }
}

function readOverridesDb() {
  try {
    const db = getDb();
    const statement = db.prepare("SELECT content FROM cms_overrides WHERE id = 1");
    const row = statement.get() as { content?: string } | undefined;

    if (!row?.content) {
      return null;
    }

    return JSON.parse(row.content) as CmsOverrides;
  } catch (error) {
    console.error("Failed to read cms_overrides from DB", error);
    return null;
  }
}

export function getCmsOverrides(): CmsOverrides {
  const dbData = readOverridesDb();

  if (dbData) {
    return dbData;
  }

  return readOverridesFile();
}

export function saveCmsOverrides(overrides: CmsOverrides) {
  const db = getDb();
  const content = JSON.stringify(overrides);
  const statement = db.prepare(`
    INSERT INTO cms_overrides (id, content, updated_at)
    VALUES (1, ?, datetime('now'))
    ON CONFLICT(id) DO UPDATE SET
      content = excluded.content,
      updated_at = datetime('now')
  `);

  statement.run(content);

  fs.writeFileSync(overridesPath, JSON.stringify(overrides, null, 2) + "\n", "utf-8");
}

export type { CmsOverrides };
