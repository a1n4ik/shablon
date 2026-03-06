import { buildMetadata } from "@/lib/seo";
import { contentApi } from "@/lib/content-api";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SectionHeading } from "@/components/common/section-heading";
import { DoctorCatalog } from "@/features/catalogs/doctor-catalog";
import { CtaStrip } from "@/components/common/cta-strip";

export const revalidate = 3600;

export const metadata = buildMetadata({
  title: "Врачи клиники в Краснодаре — специалисты МедПрайм",
  description:
    "Врачи медицинского центра МедПрайм в Краснодаре: гинеколог, терапевт, кардиолог, гастроэнтеролог и другие специалисты. Фото, стаж, направления работы, запись на приём.",
  canonicalPath: "/doctors",
});

export default function DoctorsPage() {
  const doctors = contentApi.getDoctors();

  return (
    <>
      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs items={[{ name: "Главная", href: "/" }, { name: "Врачи", href: "/doctors" }]} />
          <SectionHeading
            eyebrow="Специалисты"
            title="Врачи медицинского центра"
            description="Отдельные страницы врачей усиливают E-E-A-T, помогают пользователю оценить компетенции специалиста и повышают конверсию в запись."
          />
          <DoctorCatalog doctors={doctors} />
        </Container>
      </section>

      <CtaStrip
        title="Нужен подходящий специалист, но не знаете, к кому записаться?"
        description="Оставьте заявку — администратор подберёт врача по жалобе, направлению и удобному времени визита."
        page="/doctors"
      />
    </>
  );
}
