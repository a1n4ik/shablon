import type { Service } from "@/types";

export function filterServices(services: Service[], query: string, category?: string) {
  const q = query.trim().toLowerCase();

  return services.filter((service) => {
    const matchesCategory = !category || category === "all" || service.categorySlug === category;
    const matchesQuery =
      !q ||
      service.name.toLowerCase().includes(q) ||
      service.shortDescription.toLowerCase().includes(q);

    return matchesCategory && matchesQuery;
  });
}
