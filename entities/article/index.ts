import type { Article } from "@/types";

export function filterArticles(articles: Article[], query: string, category?: string) {
  const q = query.trim().toLowerCase();

  return articles.filter((article) => {
    const matchesCategory = !category || category === "all" || article.category === category;
    const matchesQuery =
      !q ||
      article.title.toLowerCase().includes(q) ||
      article.excerpt.toLowerCase().includes(q);

    return matchesCategory && matchesQuery;
  });
}
