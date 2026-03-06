import { HeartPulse, MapPinned, Microscope, ShieldCheck, Sparkles, Users } from "lucide-react";
import { Container } from "@/components/layout/container";
import { SectionHeading } from "@/components/common/section-heading";
import { Card, CardContent } from "@/shared/ui/card";

const items = [
  {
    icon: Users,
    title: "Команда профильных врачей",
    text: "Профильные специалисты с понятной маршрутизацией пациента между направлениями.",
  },
  {
    icon: Microscope,
    title: "Диагностика в одном месте",
    text: "УЗИ, анализы и консультации без необходимости ездить по разным адресам.",
  },
  {
    icon: HeartPulse,
    title: "Профилактический подход",
    text: "Ставка не только на лечение жалобы, но и на снижение рисков в будущем.",
  },
  {
    icon: ShieldCheck,
    title: "Доверие и прозрачность",
    text: "Лицензии, документы, понятные цены и открытая коммуникация с пациентом.",
  },
  {
    icon: MapPinned,
    title: "Удобная локальная клиника",
    text: "Коммерческие страницы заточены под город и удобство записи рядом с домом или офисом.",
  },
  {
    icon: Sparkles,
    title: "Комфортный сервис",
    text: "Светлый интерьер, много воздуха, спокойная навигация и качественный digital UX.",
  },
];

export function AdvantagesSection() {
  return (
    <section className="py-14 md:py-20">
      <Container>
        <SectionHeading
          eyebrow="Почему выбирают нас"
          title="Сайт и клиника построены вокруг доверия, скорости и понятного маршрута пациента"
          description="Этот блок можно масштабировать и усиливать под коммерческие запросы, локальные посадочные страницы и SEO-кластеры."
        />
        <div className="grid gap-5 md:grid-cols-2 xl:grid-cols-3">
          {items.map((item) => (
            <Card key={item.title}>
              <CardContent className="p-6">
                <div className="mb-4 inline-flex rounded-2xl bg-primary/10 p-3 text-primary">
                  <item.icon className="h-5 w-5" />
                </div>
                <h3 className="text-xl font-semibold">{item.title}</h3>
                <p className="mt-3 text-sm leading-6 text-muted-foreground">{item.text}</p>
              </CardContent>
            </Card>
          ))}
        </div>
      </Container>
    </section>
  );
}
