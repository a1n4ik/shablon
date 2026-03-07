import Image from "next/image";
import { buildMetadata } from "@/lib/seo";
import { contentApi } from "@/lib/content-api";
import { Container } from "@/components/layout/container";
import { Breadcrumbs } from "@/components/layout/breadcrumbs";
import { LicensesSection } from "@/components/sections/licenses-section";
import { DoctorsSection } from "@/components/sections/doctors-section";
import { CtaStrip } from "@/components/common/cta-strip";
import { Card, CardContent } from "@/shared/ui/card";

export const revalidate = 3600;

export const metadata = buildMetadata({
  title: "О клинике — лицензии, оборудование, специалисты | Персона",
  description:
    "История, миссия, преимущества, лицензии и специалисты частного медицинского центра Персона в Ставрополе.",
  canonicalPath: "/about",
});

export default function AboutPage() {
  const clinic = contentApi.getClinicInfo();
  const doctors = contentApi.getDoctors();

  return (
    <>
      <section className="py-10 md:py-14">
        <Container>
          <Breadcrumbs
            items={[
              { name: "Главная", href: "/" },
              { name: "О клинике", href: "/about" },
            ]}
          />
          <div className="grid gap-8 lg:grid-cols-[1.1fr_0.9fr]">
            <div>
              <h1 className="text-4xl font-semibold tracking-tight md:text-5xl">О клинике</h1>
              <p className="mt-5 max-w-3xl text-lg leading-8 text-muted-foreground">{clinic.description}</p>

              <div className="mt-8 grid gap-4 md:grid-cols-2">
                <InfoCard title="История клиники" text="Клиника работает на рынке медицинских услуг более 9 лет и развивает формат современной локальной медицины с прозрачным сервисом." />
                <InfoCard title="Миссия" text="Помогать пациенту быстро и спокойно решать задачи здоровья, не перегружая процесс лишними визитами и непонятными назначениями." />
                <InfoCard title="Оборудование" text="Аппараты экспертного класса для ультразвуковой диагностики, современная лабораторная логистика и комфортные кабинеты специалистов." />
                <InfoCard title="Почему нам доверяют" text="Открытые документы, прозрачные контакты, понятный прайс-лист и отдельные страницы врачей усиливают доверие и помогают пациенту принять решение." />
              </div>
            </div>
            <div className="space-y-4">
              <div className="overflow-hidden rounded-[32px] border border-border bg-card shadow-soft">
                <Image
                  src="/images/clinic-building.svg"
                  alt="Фасад и интерьер клиники"
                  width={900}
                  height={720}
                  className="h-auto w-full"
                />
              </div>
              <div className="overflow-hidden rounded-[32px] border border-border bg-card shadow-soft">
                <Image
                  src="/images/equipment.svg"
                  alt="Оборудование медицинского центра"
                  width={900}
                  height={720}
                  className="h-auto w-full"
                />
              </div>
            </div>
          </div>
        </Container>
      </section>

      <LicensesSection licenses={clinic.licenses} />
      <DoctorsSection doctors={doctors.slice(0, 4)} />
      <CtaStrip
        title="Хотите познакомиться с клиникой через удобный первый визит?"
        description="Оставьте заявку — подберём врача, расскажем о подготовке и предложим удобное время записи."
        page="/about"
      />
    </>
  );
}

function InfoCard({ title, text }: { title: string; text: string }) {
  return (
    <Card>
      <CardContent className="p-6">
        <h2 className="text-xl font-semibold">{title}</h2>
        <p className="mt-3 text-sm leading-6 text-muted-foreground">{text}</p>
      </CardContent>
    </Card>
  );
}
