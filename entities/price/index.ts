import type { PriceCategory } from "@/types";

export function flattenPrices(categories: PriceCategory[]) {
  return categories.flatMap((category) =>
    category.items.map((item) => ({
      ...item,
      categorySlug: category.slug,
      categoryTitle: category.title,
    })),
  );
}
