import Link from "next/link";
import { notFound } from "next/navigation";
import { contentApi } from "@/lib/content-api";
import { buildMetadata, breadcrumbs } from "@/lib/seo";
import { buildBreadcrumbSchema, buildFaqSchema, buildServiceSchema } from "@/lib/schema";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SchemaScript } from "@/components/seo/schema-script";
import { AppointmentForm } from "@/features/forms/appointment-form";
import { DoctorCard } from "@/components/cards/doctor-card";
import { Card, CardContent } from "@/shared/ui/card";
import { Badge } from "@/shared/ui/badge";
import { ArticleCard } from "@/components/cards/article-card";
import { FaqSection } from "@/components/sections/faq-section";
import { formatPrice } from "@/lib/utils";

export const revalidate = 3600;

type PageProps = {
  params: Promise<{ slug: string }>;
};

export async function generateStaticParams() {
  return contentApi.getServices().map((service) => ({ slug: service.slug }));
}

export async function generateMetadata({ params }: PageProps) {
  const { slug } = await params;
  const service = contentApi.getServiceBySlug(slug);

  if (!service) {
    return buildMetadata({
      title: "Услуга не найдена",
      description: "Запрашиваемая страница услуги не найдена.",
      noindex: true,
    });
  }

  return buildMetadata({
    ...service.seo,
  });
}

export default async function ServicePage({ params }: PageProps) {
  const { slug } = await params;
  const foundService = contentApi.getServiceBySlug(slug);

  if (!foundService) notFound();
  const service = foundService;

  const clinic = contentApi.getClinicInfo();
  const doctors = contentApi.getDoctors().filter((doctor) => service.doctorSlugs.includes(doctor.slug));
  const articles = contentApi.getArticles().filter((article) => service.relatedArticleSlugs.includes(article.slug));
  const crumbs = breadcrumbs(
    { name: "Главная", href: "/" },
    { name: "Услуги", href: "/services" },
    { name: service.name, href: `/services/${service.slug}` },
  );

  return (
    <>
      <SchemaScript schema={buildBreadcrumbSchema(crumbs)} />
      <SchemaScript schema={buildServiceSchema(service, clinic)} />
      <SchemaScript schema={buildFaqSchema(service.faq)} />

      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs items={crumbs} />

          <div className="grid gap-8 lg:grid-cols-[1.1fr_0.9fr]">
            <div>
              <Badge className="mb-4">от {formatPrice(service.priceFrom)}</Badge>
              <h1 className="text-4xl font-semibold tracking-tight md:text-5xl">{service.name}</h1>
              <p className="mt-5 max-w-3xl text-lg leading-8 text-muted-foreground">{service.description}</p>

              <div className="mt-8 grid gap-4 md:grid-cols-2">
                <InfoBlock title="Когда обращаться" items={service.symptoms} />
                <InfoBlock title="Показания" items={service.indications} />
                <InfoBlock title="Как проходит приём / процедура" items={service.procedureSteps} />
                <InfoBlock title="Противопоказания" items={service.contraindications} />
              </div>

              <Card className="mt-8">
                <CardContent className="p-6">
                  <h2 className="text-2xl font-semibold">Преимущества обращения в клинику</h2>
                  <ul className="mt-4 grid gap-3 text-sm leading-6 text-muted-foreground">
                    {service.advantages.map((item) => (
                      <li key={item}>• {item}</li>
                    ))}
                  </ul>
                </CardContent>
              </Card>
            </div>

            <AppointmentForm
              page={`/services/${service.slug}`}
              serviceSlug={service.slug}
              description={`Оставьте заявку на услугу «${service.name}», и мы предложим ближайшее удобное время.`}
            />
          </div>
        </Container>
      </section>

      <section className="py-6 md:py-10">
        <Container>
          <h2 className="text-3xl font-semibold">Врачи по направлению</h2>
          <div className="mt-6 grid gap-5">
            {doctors.map((doctor) => (
              <DoctorCard key={doctor.slug} doctor={doctor} />
            ))}
          </div>
        </Container>
      </section>

      <FaqSection
        items={service.faq}
        title={`Частые вопросы по услуге «${service.name}»`}
        description="FAQ усиливает качество страницы и помогает закрывать вопросы пользователя до звонка."
      />

      <section className="py-6 md:py-10">
        <Container>
          <h2 className="text-3xl font-semibold">Связанные статьи</h2>
          <div className="mt-6 grid gap-5 lg:grid-cols-3">
            {articles.map((article) => (
              <ArticleCard key={article.slug} article={article} />
            ))}
          </div>
          <div className="mt-6 text-sm text-muted-foreground">
            <Link href="/articles" className="font-semibold text-primary hover:text-primary/80">
              Перейти в блог →
            </Link>
          </div>
        </Container>
      </section>
    </>
  );
}

function InfoBlock({ title, items }: { title: string; items: string[] }) {
  return (
    <Card>
      <CardContent className="p-6">
        <h2 className="text-xl font-semibold">{title}</h2>
        <ul className="mt-4 space-y-2 text-sm leading-6 text-muted-foreground">
          {items.map((item) => (
            <li key={item}>• {item}</li>
          ))}
        </ul>
      </CardContent>
    </Card>
  );
}
