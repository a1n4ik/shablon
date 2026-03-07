import Link from "next/link";
import { buildMetadata } from "@/lib/seo";
import { contentApi } from "@/lib/content-api";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SectionHeading } from "@/components/common/section-heading";
import { PriceCatalog } from "@/features/catalogs/price-catalog";
import { Card, CardContent } from "@/shared/ui/card";

export const revalidate = 3600;

export const metadata = buildMetadata({
  title: "Цены на услуги клиники в Ставрополе | Персона",
  description:
    "Прайс-лист медицинского центра Персона в Ставрополе: консультации врачей, УЗИ, анализы и чек-апы. Удобный поиск по ценам и категориям услуг.",
  canonicalPath: "/prices",
});

export default function PricesPage() {
  const categories = contentApi.getPriceCategories();

  return (
    <section className="py-10 md:py-14">
      <Container>
        <Breadcrumbs items={[{ name: "Главная", href: "/" }, { name: "Цены", href: "/prices" }]} />
        <SectionHeading
          eyebrow="Прайс-лист"
          title="Цены на услуги клиники"
          description="Раздел цен спроектирован без тонких мусорных страниц: есть основной прайс для пользователя и отдельные сильные страницы категорий там, где это полезно для SEO и навигации."
        />

        <PriceCatalog categories={categories} />

        <div className="mt-10 grid gap-5 lg:grid-cols-3">
          {categories.map((category) => (
            <Card key={category.slug}>
              <CardContent className="p-6">
                <h2 className="text-xl font-semibold">{category.title}</h2>
                <p className="mt-3 text-sm leading-6 text-muted-foreground">{category.description}</p>
                <div className="mt-5 text-sm">
                  <Link href={`/prices/${category.slug}`} className="font-semibold text-primary hover:text-primary/80">
                    Открыть страницу категории →
                  </Link>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      </Container>
    </section>
  );
}
