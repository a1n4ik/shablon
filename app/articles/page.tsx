import Link from "next/link";
import { buildMetadata } from "@/lib/seo";
import { contentApi } from "@/lib/content-api";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SectionHeading } from "@/components/common/section-heading";
import { ArticleCard } from "@/components/cards/article-card";
import { ArticleListControls } from "@/features/catalogs/article-list-controls";
import { Button } from "@/shared/ui/button";
import { Card, CardContent } from "@/shared/ui/card";

export const revalidate = 3600;

export const metadata = buildMetadata({
  title: "Статьи клиники — блог о здоровье, диагностике и профилактике | Персона",
  description:
    "Блог медицинского центра Персона: статьи о профилактике, диагностике, кардиологии, УЗИ, анализах и полезных сценариях обращения к врачу.",
  canonicalPath: "/articles",
});

type PageProps = {
  searchParams?: Promise<{
    q?: string;
    category?: string;
    page?: string;
  }>;
};

const PAGE_SIZE = 6;

export default async function ArticlesPage({ searchParams }: PageProps) {
  const sp = (await searchParams) ?? {};
  const query = sp.q?.trim() ?? "";
  const category = sp.category?.trim() ?? "all";
  const page = Math.max(Number(sp.page ?? 1) || 1, 1);

  const articles = contentApi.getArticles();
  const categories = Array.from(new Set(articles.map((item) => item.category)));
  const filtered = articles.filter((article) => {
    const byCategory = category === "all" || !category || article.category === category;
    const haystack = `${article.title} ${article.excerpt} ${article.category}`.toLowerCase();
    const byQuery = !query || haystack.includes(query.toLowerCase());
    return byCategory && byQuery;
  });

  const pages = Math.max(1, Math.ceil(filtered.length / PAGE_SIZE));
  const safePage = Math.min(page, pages);
  const pageItems = filtered.slice((safePage - 1) * PAGE_SIZE, safePage * PAGE_SIZE);

  return (
    <section className="py-10 md:py-14">
      <Container>
        <Breadcrumbs items={[{ name: "Главная", href: "/" }, { name: "Статьи", href: "/articles" }]} />
        <SectionHeading
          eyebrow="Блог клиники"
          title="Статьи и экспертные материалы"
          description="Информационный раздел помогает закрывать вопросы пациента до обращения, усиливает тематическую полноту сайта и даёт естественные точки перелинковки на услуги и врачей."
        />

        <ArticleListControls
          query={query}
          category={category}
          categories={categories}
        />

        <div className="mt-8 grid gap-5 lg:grid-cols-3">
          {pageItems.map((article) => (
            <ArticleCard key={article.slug} article={article} />
          ))}
        </div>

        {pageItems.length === 0 ? (
          <Card className="mt-8 border-dashed">
            <CardContent className="p-8 text-center text-muted-foreground">
              По заданным параметрам статьи не найдены.
            </CardContent>
          </Card>
        ) : null}

        {pages > 1 ? (
          <div className="mt-8 flex flex-wrap gap-2">
            {Array.from({ length: pages }, (_, index) => {
              const nextPage = index + 1;
              const params = new URLSearchParams();
              if (query) params.set("q", query);
              if (category && category !== "all") params.set("category", category);
              if (nextPage > 1) params.set("page", String(nextPage));

              return (
                <Button key={nextPage} asChild variant={nextPage === safePage ? "default" : "outline"}>
                  <Link href={params.toString() ? `/articles?${params.toString()}` : "/articles"}>{nextPage}</Link>
                </Button>
              );
            })}
          </div>
        ) : null}
      </Container>
    </section>
  );
}
