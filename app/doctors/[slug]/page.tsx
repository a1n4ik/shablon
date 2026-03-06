import { notFound } from "next/navigation";
import Link from "next/link";
import { contentApi } from "@/lib/content-api";
import { buildMetadata, breadcrumbs } from "@/lib/seo";
import { buildBreadcrumbSchema, buildDoctorSchema, buildFaqSchema } from "@/lib/schema";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SchemaScript } from "@/components/seo/schema-script";
import { Badge } from "@/shared/ui/badge";
import { Card, CardContent } from "@/shared/ui/card";
import { AppointmentForm } from "@/features/forms/appointment-form";
import { ServiceCard } from "@/components/cards/service-card";
import { FaqSection } from "@/components/sections/faq-section";
import { formatDate } from "@/lib/utils";

export const revalidate = 3600;

type PageProps = {
  params: Promise<{ slug: string }>;
};

export async function generateStaticParams() {
  return contentApi.getDoctors().map((doctor) => ({ slug: doctor.slug }));
}

export async function generateMetadata({ params }: PageProps) {
  const { slug } = await params;
  const doctor = contentApi.getDoctorBySlug(slug);

  if (!doctor) {
    return buildMetadata({
      title: "Врач не найден",
      description: "Запрашиваемая страница врача не найдена.",
      noindex: true,
    });
  }

  return buildMetadata(doctor.seo);
}

export default async function DoctorPage({ params }: PageProps) {
  const { slug } = await params;
  const foundDoctor = contentApi.getDoctorBySlug(slug);

  if (!foundDoctor) notFound();
  const doctor = foundDoctor;

  const clinic = contentApi.getClinicInfo();
  const services = contentApi.getServices().filter((service) => doctor.serviceSlugs.includes(service.slug));
  const crumbs = breadcrumbs(
    { name: "Главная", href: "/" },
    { name: "Врачи", href: "/doctors" },
    { name: doctor.name, href: `/doctors/${doctor.slug}` },
  );

  return (
    <>
      <SchemaScript schema={buildBreadcrumbSchema(crumbs)} />
      <SchemaScript schema={buildDoctorSchema(doctor, clinic)} />
      <SchemaScript schema={buildFaqSchema(doctor.faq)} />

      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs items={crumbs} />
          <div className="grid gap-8 lg:grid-cols-[1.15fr_0.85fr]">
            <div>
              <Badge className="mb-4">Стаж {doctor.experienceYears} лет</Badge>
              <h1 className="text-4xl font-semibold tracking-tight md:text-5xl">{doctor.name}</h1>
              <p className="mt-3 text-lg font-medium text-primary">{doctor.specialization}</p>
              <p className="mt-5 max-w-3xl text-lg leading-8 text-muted-foreground">{doctor.excerpt}</p>

              <div className="mt-8 grid gap-4 md:grid-cols-2">
                <InfoCard title="Образование" items={doctor.education} />
                <InfoCard title="Сертификаты" items={doctor.certificates} />
                <InfoCard title="Направления работы" items={doctor.areas} />
                <Card>
                  <CardContent className="p-6">
                    <h2 className="text-xl font-semibold">Расписание</h2>
                    <p className="mt-4 text-sm leading-6 text-muted-foreground">{doctor.scheduleNote}</p>
                    <p className="mt-4 text-sm leading-6 text-muted-foreground">
                      Точное время визита подтверждает администратор после заявки с сайта или звонка.
                    </p>
                  </CardContent>
                </Card>
              </div>
            </div>

            <AppointmentForm
              page={`/doctors/${doctor.slug}`}
              doctorSlug={doctor.slug}
              description={`Оставьте заявку на приём к врачу «${doctor.name}», и мы предложим ближайшее доступное время.`}
            />
          </div>
        </Container>
      </section>

      <section className="py-6 md:py-10">
        <Container>
          <h2 className="text-3xl font-semibold">Услуги, которые ведёт врач</h2>
          <div className="mt-6 grid gap-5 lg:grid-cols-2">
            {services.map((service) => (
              <ServiceCard key={service.slug} service={service} />
            ))}
          </div>
        </Container>
      </section>

      <section className="py-6 md:py-10">
        <Container>
          <h2 className="text-3xl font-semibold">Отзывы о специалисте</h2>
          <div className="mt-6 grid gap-4 lg:grid-cols-2">
            {doctor.reviews.map((review) => (
              <Card key={`${review.author}-${review.date}`}>
                <CardContent className="p-6">
                  <div className="flex items-center justify-between gap-3">
                    <p className="font-semibold">{review.author}</p>
                    <p className="text-sm text-muted-foreground">{formatDate(review.date)}</p>
                  </div>
                  <p className="mt-2 text-sm text-primary">Оценка: {review.rating}/5</p>
                  <p className="mt-4 text-sm leading-6 text-muted-foreground">{review.text}</p>
                </CardContent>
              </Card>
            ))}
          </div>
        </Container>
      </section>

      <FaqSection
        items={doctor.faq}
        title={`Частые вопросы о приёме у ${doctor.name}`}
        description="FAQ на странице врача помогает снять возражения перед записью и усиливает полезность страницы."
      />

      <section className="py-6 md:py-10">
        <Container>
          <Card>
            <CardContent className="p-6 md:p-8">
              <h2 className="text-2xl font-semibold">SEO-блок о специалисте</h2>
              <p className="mt-4 text-sm leading-7 text-muted-foreground">
                Страница врача в медицинской тематике должна быть не просто визиткой, а полноценной доверительной страницей с биографией, образованием, сертификатами, направлениями работы, отзывами, услугами и прозрачным сценарием записи. Это улучшает восприятие клиники и повышает релевантность страницы по коммерческим и информационным запросам.
              </p>
              <p className="mt-4 text-sm leading-7 text-muted-foreground">
                На сайте МедПрайм врач {doctor.name} связан с услугами и контентом клиники. Такая перелинковка помогает пользователю быстрее перейти к нужной услуге, а поисковой системе — лучше понять структуру медицинского портала.
              </p>
              <div className="mt-5 text-sm text-muted-foreground">
                <Link href="/services" className="font-semibold text-primary hover:text-primary/80">
                  Смотреть все услуги →
                </Link>
              </div>
            </CardContent>
          </Card>
        </Container>
      </section>
    </>
  );
}

function InfoCard({ title, items }: { title: string; items: string[] }) {
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
