import { notFound } from "next/navigation";
import Link from "next/link";
import { buildMetadata, breadcrumbs } from "@/lib/seo";
import { contentApi } from "@/lib/content-api";
import { buildBreadcrumbSchema } from "@/lib/schema";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SchemaScript } from "@/components/seo/schema-script";
import { Card, CardContent } from "@/shared/ui/card";
import { formatPrice } from "@/lib/utils";

export const revalidate = 3600;

type PageProps = {
  params: Promise<{ slug: string }>;
};

export async function generateStaticParams() {
  return contentApi.getPriceCategories().map((category) => ({ slug: category.slug }));
}

export async function generateMetadata({ params }: PageProps) {
  const { slug } = await params;
  const category = contentApi.getPriceCategories().find((item) => item.slug === slug);

  if (!category) {
    return buildMetadata({
      title: "Категория цен не найдена",
      description: "Запрашиваемая страница цен не найдена.",
      noindex: true,
    });
  }

  return buildMetadata({
    title: `${category.title} — цены в Краснодаре | МедПрайм`,
    description: `${category.description} Актуальная структура цен медицинского центра МедПрайм в Краснодаре.`,
    canonicalPath: `/prices/${category.slug}`,
  });
}

export default async function PriceCategoryPage({ params }: PageProps) {
  const { slug } = await params;
  const foundCategory = contentApi.getPriceCategories().find((item) => item.slug === slug);

  if (!foundCategory) notFound();
  const category = foundCategory;

  const crumbs = breadcrumbs(
    { name: "Главная", href: "/" },
    { name: "Цены", href: "/prices" },
    { name: category.title, href: `/prices/${category.slug}` },
  );

  return (
    <>
      <SchemaScript schema={buildBreadcrumbSchema(crumbs)} />
      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs items={crumbs} />
          <h1 className="text-4xl font-semibold tracking-tight md:text-5xl">{category.title}</h1>
          <p className="mt-5 max-w-3xl text-lg leading-8 text-muted-foreground">{category.description}</p>

          <div className="mt-8 overflow-hidden rounded-[28px] border border-border bg-card shadow-soft">
            <table className="w-full border-collapse text-left">
              <thead>
                <tr className="border-b border-border bg-muted/40">
                  <th className="px-5 py-4 text-sm font-semibold">Услуга</th>
                  <th className="px-5 py-4 text-sm font-semibold">Цена</th>
                </tr>
              </thead>
              <tbody>
                {category.items.map((item) => (
                  <tr key={item.slug} className="border-b border-border last:border-b-0">
                    <td className="px-5 py-4 text-sm">
                      {item.serviceSlug ? (
                        <Link href={`/services/${item.serviceSlug}`} className="font-medium hover:text-primary">
                          {item.name}
                        </Link>
                      ) : (
                        <span className="font-medium">{item.name}</span>
                      )}
                      {item.note ? <p className="mt-1 text-xs text-muted-foreground">{item.note}</p> : null}
                    </td>
                    <td className="px-5 py-4 text-sm font-semibold">{formatPrice(item.price)}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>

          <Card className="mt-8">
            <CardContent className="p-6 md:p-8">
              <h2 className="text-2xl font-semibold">Как использовать страницу категории цен</h2>
              <p className="mt-4 text-sm leading-7 text-muted-foreground">
                Такие страницы помогают укреплять посадочные сегменты под коммерческие запросы, не создавая избыточных тонких страниц под каждую манипуляцию. Пользователь быстро ориентируется в стоимости, а поисковая система получает полезную тематическую страницу с понятной связью между прайсом и услугами.
              </p>
            </CardContent>
          </Card>
        </Container>
      </section>
    </>
  );
}
