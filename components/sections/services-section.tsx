import Link from "next/link";
import type { Service } from "@/types";
import { Container } from "@/components/layout/container";
import { SectionHeading } from "@/components/common/section-heading";
import { Button } from "@/shared/ui/button";
import { ServiceCard } from "@/components/cards/service-card";

export function ServicesSection({ services }: { services: Service[] }) {
  return (
    <section className="py-14 md:py-20">
      <Container>
        <SectionHeading
          eyebrow="Основные направления"
          title="Коммерчески важные услуги и SEO-страницы с полезным содержанием"
          description="Шаблон детальной услуги уже включает симптомы, ход приёма, показания, цены, врачей, FAQ и перелинковку на статьи."
          action={
            <Button asChild variant="outline">
              <Link href="/services">Все услуги</Link>
            </Button>
          }
        />
        <div className="grid gap-5 lg:grid-cols-2">
          {services.map((service) => (
            <ServiceCard key={service.slug} service={service} />
          ))}
        </div>
      </Container>
    </section>
  );
}
