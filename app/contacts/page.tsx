import { buildMetadata } from "@/lib/seo";
import { contentApi } from "@/lib/content-api";
import { buildClinicSchema } from "@/lib/schema";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { SchemaScript } from "@/components/seo/schema-script";
import { ContactSection } from "@/components/sections/contact-section";
import { Card, CardContent } from "@/shared/ui/card";

export const revalidate = 3600;

export const metadata = buildMetadata({
  title: "Контакты клиники в Ставрополе — адрес, телефон, карта | Персона",
  description:
    "Контакты медицинского центра Персона в Ставрополе: адрес, телефон, режим работы, карта, парковка и форма записи на приём.",
  canonicalPath: "/contacts",
});

export default function ContactsPage() {
  const clinic = contentApi.getClinicInfo();
  const contact = contentApi.getContactInfo();

  return (
    <>
      <SchemaScript schema={buildClinicSchema(clinic)} />
      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs items={[{ name: "Главная", href: "/" }, { name: "Контакты", href: "/contacts" }]} />
          <div className="mb-8 max-w-3xl">
            <h1 className="text-4xl font-semibold tracking-tight md:text-5xl">Контакты клиники</h1>
            <p className="mt-5 text-lg leading-8 text-muted-foreground">
              Страница контактов усилена под локальное SEO: адрес, телефон, режим работы, координаты, карта, парковка, путь от остановки и форма обращения на приём.
            </p>
          </div>
          <ContactSection contact={contact} />
          <Card className="mt-8">
            <CardContent className="p-6 md:p-8">
              <h2 className="text-2xl font-semibold">NAP и локальный акцент</h2>
              <p className="mt-4 text-sm leading-7 text-muted-foreground">
                Для локального продвижения важно единообразно показывать NAP-данные: название клиники, адрес и телефон. Эти данные уже вынесены в общую конфигурацию и могут использоваться на главной, в футере, на странице контактов и в schema.org-разметке без расхождений.
              </p>
            </CardContent>
          </Card>
        </Container>
      </section>
    </>
  );
}
