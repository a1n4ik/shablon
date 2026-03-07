import { NextResponse } from "next/server";
import { getCmsOverrides, saveCmsOverrides, type CmsOverrides } from "@/lib/cms-overrides";
import { sanitizeUnknown } from "@/lib/security";

export async function GET() {
  return NextResponse.json(getCmsOverrides());
}

export async function PUT(request: Request) {
  try {
    const payload = sanitizeUnknown(await request.json());

    if (typeof payload !== "object" || payload === null || Array.isArray(payload)) {
      return NextResponse.json({ message: "Ожидается JSON-объект." }, { status: 400 });
    }

    saveCmsOverrides(payload as CmsOverrides);

    return NextResponse.json({ message: "Изменения сохранены." });
  } catch {
    return NextResponse.json({ message: "Некорректный JSON." }, { status: 400 });
  }
}
