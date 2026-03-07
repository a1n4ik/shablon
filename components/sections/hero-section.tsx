import Image from "next/image";
import { ShieldCheck, Stethoscope, Timer } from "lucide-react";
import { Container } from "@/components/layout/container";
import { siteConfig } from "@/config/site";
import { AppointmentModal } from "@/features/modals/appointment-modal";
import { Button } from "@/shared/ui/button";

type HeroSectionProps = {
  city: string;
};

export function HeroSection({ city }: HeroSectionProps) {
  return (
    <section className="bg-grid-fade pb-10 pt-10 md:pb-14 md:pt-16">
      <Container className="grid items-center gap-10 lg:grid-cols-[1.1fr_0.9fr]">
        <div>
          <div className="inline-flex items-center rounded-full border border-border bg-background px-4 py-2 text-sm text-muted-foreground shadow-sm">
            Частный медицинский центр в {city}
          </div>
          <h1 className="mt-6 text-4xl font-semibold tracking-tight text-foreground md:text-6xl">
            Врачи, диагностика и чек-апы в одном маршруте
          </h1>
          <p className="mt-5 max-w-2xl text-lg leading-8 text-muted-foreground">
            Современная клиника с акцентом на доверие, точную диагностику, удобную запись и понятный план лечения без лишней перегрузки.
          </p>
          <div className="mt-8 flex flex-col gap-3 sm:flex-row">
            <AppointmentModal triggerLabel="Записаться на приём" page="home-hero" />
            <Button asChild variant="outline" size="lg">
              <a href={`tel:${siteConfig.phone.replace(/[^\d+]/g, "")}`}>Позвонить в клинику</a>
            </Button>
          </div>

          <div className="mt-8 grid gap-4 sm:grid-cols-3">
            <Feature icon={<Stethoscope className="h-5 w-5" />} title="18+ направлений" text="Консультации, УЗИ, анализы" />
            <Feature icon={<Timer className="h-5 w-5" />} title="Быстрая запись" text="Подберём удобное время визита" />
            <Feature icon={<ShieldCheck className="h-5 w-5" />} title="Прозрачный подход" text="Понятные назначения и цены" />
          </div>
        </div>

        <div className="relative">
          <div className="absolute inset-0 -z-10 rounded-[40px] bg-primary/10 blur-3xl" />
          <div className="overflow-hidden rounded-[36px] border border-border bg-background p-3 shadow-soft">
            <Image
              src="/images/hero-clinic.svg"
              alt="Современный интерьер медицинского центра"
              width={900}
              height={720}
              priority
              className="h-auto w-full rounded-[28px]"
            />
          </div>
          <div className="mt-4 flex flex-wrap gap-3 text-sm text-muted-foreground">
            <span className="rounded-full bg-background px-4 py-2 shadow-sm">Локальное SEO под город</span>
            <span className="rounded-full bg-background px-4 py-2 shadow-sm">Удобная онлайн-запись</span>
            <span className="rounded-full bg-background px-4 py-2 shadow-sm">E-E-A-T и доверительные факторы</span>
          </div>
        </div>
      </Container>
    </section>
  );
}

function Feature({
  icon,
  title,
  text,
}: {
  icon: React.ReactNode;
  title: string;
  text: string;
}) {
  return (
    <div className="rounded-[28px] border border-border bg-background p-4 shadow-soft">
      <div className="mb-3 inline-flex rounded-2xl bg-primary/10 p-2 text-primary">{icon}</div>
      <div className="text-base font-semibold">{title}</div>
      <div className="mt-1 text-sm text-muted-foreground">{text}</div>
    </div>
  );
}
