import type { Metadata } from "next";
import { siteConfig } from "@/config/site";
import type { BreadcrumbItem, SeoFields } from "@/types";
import { absoluteUrl } from "@/lib/utils";

type BuildMetadataInput = Partial<SeoFields> & {
  title?: string;
  description?: string;
  path?: string;
};

export function buildMetadata(input: BuildMetadataInput = {}): Metadata {
  const title = input.title ?? siteConfig.name;
  const description = input.description ?? siteConfig.description;
  const path = input.canonicalPath ?? input.path ?? "/";
  const canonical = absoluteUrl(path);
  const image = absoluteUrl(input.image ?? siteConfig.defaultOg);

  return {
    metadataBase: new URL(siteConfig.url),
    title,
    description,
    alternates: {
      canonical,
    },
    robots: input.noindex
      ? { index: false, follow: false }
      : { index: true, follow: true },
    openGraph: {
      title,
      description,
      locale: siteConfig.locale,
      type: "website",
      url: canonical,
      siteName: siteConfig.name,
      images: [{ url: image, width: 1200, height: 630, alt: title }],
    },
    twitter: {
      card: "summary_large_image",
      title,
      description,
      images: [image],
    },
    keywords: input.keywords,
  };
}

export function breadcrumbs(...items: BreadcrumbItem[]) {
  return items;
}
