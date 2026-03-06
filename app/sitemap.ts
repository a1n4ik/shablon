import type { MetadataRoute } from "next";
import { siteConfig } from "@/config/site";
import { contentApi } from "@/lib/content-api";

export default function sitemap(): MetadataRoute.Sitemap {
  const base = siteConfig.url;
  const staticPages = ["", "/about", "/services", "/doctors", "/articles", "/prices", "/faq", "/contacts"].map((path) => ({
    url: `${base}${path || "/"}`,
    lastModified: new Date(),
    changeFrequency: path === "" ? "weekly" as const : "monthly" as const,
    priority: path === "" ? 1 : 0.8,
  }));

  const servicePages = contentApi.getServices().map((service) => ({
    url: `${base}/services/${service.slug}`,
    lastModified: new Date(),
    changeFrequency: "monthly" as const,
    priority: 0.9,
  }));

  const doctorPages = contentApi.getDoctors().map((doctor) => ({
    url: `${base}/doctors/${doctor.slug}`,
    lastModified: new Date(),
    changeFrequency: "monthly" as const,
    priority: 0.8,
  }));

  const articlePages = contentApi.getArticles().map((article) => ({
    url: `${base}/articles/${article.slug}`,
    lastModified: new Date(article.updatedAt ?? article.publishedAt),
    changeFrequency: "monthly" as const,
    priority: 0.7,
  }));

  const pricePages = contentApi.getPriceCategories().map((category) => ({
    url: `${base}/prices/${category.slug}`,
    lastModified: new Date(),
    changeFrequency: "monthly" as const,
    priority: 0.7,
  }));

  return [...staticPages, ...servicePages, ...doctorPages, ...articlePages, ...pricePages];
}
