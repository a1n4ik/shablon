import Link from "next/link";
import { notFound } from "next/navigation";
import { contentApi } from "@/lib/content-api";
import { buildMetadata, breadcrumbs } from "@/lib/seo";
import { buildArticleSchema, buildBreadcrumbSchema } from "@/lib/schema";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SchemaScript } from "@/components/seo/schema-script";
import { Badge } from "@/shared/ui/badge";
import { Card, CardContent } from "@/shared/ui/card";
import { ArticleCard } from "@/components/cards/article-card";
import { DoctorCard } from "@/components/cards/doctor-card";
import { AppointmentForm } from "@/features/forms/appointment-form";
import { formatDate } from "@/lib/utils";

export const revalidate = 3600;

type PageProps = {
  params: Promise<{ slug: string }>;
};

export async function generateStaticParams() {
  return contentApi.getArticles().map((article) => ({ slug: article.slug }));
}

export async function generateMetadata({ params }: PageProps) {
  const { slug } = await params;
  const article = contentApi.getArticleBySlug(slug);

  if (!article) {
    return buildMetadata({
      title: "Статья не найдена",
      description: "Запрашиваемая статья не найдена.",
      noindex: true,
    });
  }

  return buildMetadata(article.seo);
}

export default async function ArticlePage({ params }: PageProps) {
  const { slug } = await params;
  const foundArticle = contentApi.getArticleBySlug(slug);

  if (!foundArticle) notFound();
  const article = foundArticle;

  const clinic = contentApi.getClinicInfo();
  const author = article.authorDoctorSlug ? contentApi.getDoctorBySlug(article.authorDoctorSlug) : undefined;
  const relatedServices = contentApi.getServices().filter((service) => article.relatedServiceSlugs.includes(service.slug));
  const relatedDoctors = contentApi.getDoctors().filter((doctor) => article.relatedDoctorSlugs.includes(doctor.slug));
  const relatedArticles = contentApi
    .getArticles()
    .filter((item) => item.slug !== article.slug && item.category === article.category)
    .slice(0, 3);

  const crumbs = breadcrumbs(
    { name: "Главная", href: "/" },
    { name: "Статьи", href: "/articles" },
    { name: article.title, href: `/articles/${article.slug}` },
  );

  return (
    <>
      <SchemaScript schema={buildBreadcrumbSchema(crumbs)} />
      <SchemaScript schema={buildArticleSchema(article, clinic, author?.name)} />

      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs items={crumbs} />
          <div className="grid gap-8 lg:grid-cols-[0.8fr_0.2fr]">
            <article>
              <Badge className="mb-4">{article.category}</Badge>
              <h1 className="text-4xl font-semibold tracking-tight md:text-5xl">{article.title}</h1>
              <div className="mt-4 flex flex-wrap gap-4 text-sm text-muted-foreground">
                <span>{formatDate(article.publishedAt)}</span>
                {author ? <span>Автор: {author.name}</span> : null}
              </div>
              <p className="mt-6 max-w-3xl text-lg leading-8 text-muted-foreground">{article.excerpt}</p>

              <Card className="mt-8">
                <CardContent className="p-6">
                  <h2 className="text-xl font-semibold">Оглавление</h2>
                  <ol className="mt-4 space-y-2 text-sm text-muted-foreground">
                    {article.sections.map((section, index) => (
                      <li key={section.id}>
                        <a href={`#${section.id}`} className="hover:text-primary">
                          {index + 1}. {section.title}
                        </a>
                      </li>
                    ))}
                  </ol>
                </CardContent>
              </Card>

              <div className="prose prose-slate mt-10 max-w-none prose-headings:scroll-mt-24">
                {article.sections.map((section) => (
                  <section key={section.id} id={section.id} className="mb-10 scroll-mt-24">
                    <h2 className="text-3xl font-semibold tracking-tight">{section.title}</h2>
                    <div className="mt-4 space-y-4 text-base leading-8 text-muted-foreground">
                      {section.paragraphs.map((paragraph) => (
                        <p key={paragraph}>{paragraph}</p>
                      ))}
                    </div>
                  </section>
                ))}
              </div>
            </article>

            <aside className="hidden lg:block">
              <div className="sticky top-24 rounded-[28px] border border-border bg-card p-5 shadow-soft">
                <p className="text-sm font-semibold">Быстрый переход</p>
                <ul className="mt-4 space-y-2 text-sm text-muted-foreground">
                  {article.sections.map((section) => (
                    <li key={section.id}>
                      <a href={`#${section.id}`} className="hover:text-primary">
                        {section.title}
                      </a>
                    </li>
                  ))}
                </ul>
              </div>
            </aside>
          </div>
        </Container>
      </section>

      <section className="py-6 md:py-10">
        <Container>
          <h2 className="text-3xl font-semibold">Связанные услуги</h2>
          <div className="mt-6 grid gap-4 md:grid-cols-2 xl:grid-cols-3">
            {relatedServices.map((service) => (
              <Card key={service.slug}>
                <CardContent className="p-6">
                  <h3 className="text-xl font-semibold">{service.name}</h3>
                  <p className="mt-3 text-sm leading-6 text-muted-foreground">{service.shortDescription}</p>
                  <div className="mt-5 text-sm">
                    <Link href={`/services/${service.slug}`} className="font-semibold text-primary hover:text-primary/80">
                      Перейти к услуге →
                    </Link>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        </Container>
      </section>

      <section className="py-6 md:py-10">
        <Container>
          <h2 className="text-3xl font-semibold">Связанные врачи</h2>
          <div className="mt-6 grid gap-5">
            {relatedDoctors.map((doctor) => (
              <DoctorCard key={doctor.slug} doctor={doctor} />
            ))}
          </div>
        </Container>
      </section>

      <section className="py-6 md:py-10">
        <Container>
          <AppointmentForm
            page={`/articles/${article.slug}`}
            formType="question"
            description="Можно оставить заявку прямо со статьи: администратор поможет выбрать врача или подходящую услугу по теме материала."
          />
        </Container>
      </section>

      {relatedArticles.length > 0 ? (
        <section className="py-6 md:py-10">
          <Container>
            <h2 className="text-3xl font-semibold">Похожие материалы</h2>
            <div className="mt-6 grid gap-5 lg:grid-cols-3">
              {relatedArticles.map((item) => (
                <ArticleCard key={item.slug} article={item} />
              ))}
            </div>
          </Container>
        </section>
      ) : null}
    </>
  );
}
