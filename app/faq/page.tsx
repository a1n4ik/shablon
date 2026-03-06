import { buildMetadata } from "@/lib/seo";
import { contentApi } from "@/lib/content-api";
import { buildFaqSchema } from "@/lib/schema";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SchemaScript } from "@/components/seo/schema-script";
import { FaqSection } from "@/components/sections/faq-section";
import { Card, CardContent } from "@/shared/ui/card";

export const revalidate = 3600;

export const metadata = buildMetadata({
  title: "FAQ — частые вопросы о приёме, анализах и записи | МедПрайм",
  description:
    "Ответы на частые вопросы о записи в клинику, подготовке, анализах, парковке и режиме работы медицинского центра МедПрайм в Краснодаре.",
  canonicalPath: "/faq",
});

export default function FaqPage() {
  const faqs = contentApi.getFaqs();

  return (
    <>
      <SchemaScript schema={buildFaqSchema(faqs)} />
      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs items={[{ name: "Главная", href: "/" }, { name: "FAQ", href: "/faq" }]} />
          <FaqSection
            title="Частые вопросы о клинике и записи"
            description="Отдельный FAQ-раздел полезен для пользователя, помогает менеджерам клиники сократить число повторяющихся вопросов и может использоваться как часть SEO-архитектуры."
            items={faqs}
          />
          <Card>
            <CardContent className="p-6 md:p-8">
              <h2 className="text-2xl font-semibold">Зачем FAQ важен для медицинского сайта</h2>
              <p className="mt-4 text-sm leading-7 text-muted-foreground">
                В медицинской тематике пользователь часто ищет не только услугу, но и понятные ответы: как записаться, как подготовиться, можно ли принести обследования из другой клиники, есть ли парковка, работают ли врачи в выходные. FAQ помогает закрывать такие вопросы заранее и повышает вероятность обращения.
              </p>
            </CardContent>
          </Card>
        </Container>
      </section>
    </>
  );
}
