import { buildMetadata } from "@/lib/seo";
import { contentApi } from "@/lib/content-api";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SectionHeading } from "@/components/common/section-heading";
import { ServiceCatalog } from "@/features/catalogs/service-catalog";
import { CtaStrip } from "@/components/common/cta-strip";

export const revalidate = 3600;

export const metadata = buildMetadata({
  title: "Услуги клиники — консультации врачей, УЗИ, анализы, чек-апы | Персона",
  description:
    "Каталог услуг медицинского центра в Ставрополе: гинекология, терапия, гастроэнтерология, кардиология, эндокринология, УЗИ, анализы, чек-апы.",
  canonicalPath: "/services",
});

export default function ServicesPage() {
  const services = contentApi.getServices();
  const categories = contentApi.getServiceCategories();

  return (
    <>
      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs items={[{ name: "Главная", href: "/" }, { name: "Услуги", href: "/services" }]} />
          <SectionHeading
            eyebrow="Каталог услуг"
            title="Услуги клиники с SEO-ориентированными детальными страницами"
            description="Каталог рассчитан на масштабирование: новые услуги, направления, региональные посадочные страницы и контентные кластеры."
          />
          <ServiceCatalog services={services} categories={categories} />
        </Container>
      </section>

      <CtaStrip
        title="Не знаете, к какому специалисту обратиться?"
        description="Опишите жалобу, и мы подскажем направление, врача и подходящую диагностику."
        page="/services"
      />
    </>
  );
}
