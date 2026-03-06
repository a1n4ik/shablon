import { Clock3, MapPinned, MessageCircle, PhoneCall } from "lucide-react";
import { Container } from "@/components/layout/container";
import { SectionHeading } from "@/components/common/section-heading";
import { AppointmentForm } from "@/features/forms/appointment-form";
import type { ContactInfo } from "@/types";

export function ContactSection({ contact }: { contact: ContactInfo }) {
  return (
    <section className="bg-muted/30 py-14 md:py-20">
      <Container>
        <SectionHeading
          eyebrow="Контакты и запись"
          title="Локальный SEO-блок с адресом, NAP-данными, картой и формой записи"
          description="Эта секция подходит и для главной страницы, и для раздела контактов."
        />
        <div className="grid gap-6 lg:grid-cols-[0.95fr_1.05fr]">
          <div className="space-y-6">
            <div className="rounded-[28px] border border-border bg-card p-6 shadow-soft">
              <div className="grid gap-5">
                <ContactItem icon={<MapPinned className="h-5 w-5" />} title="Адрес" text={contact.address} />
                <ContactItem icon={<PhoneCall className="h-5 w-5" />} title="Телефон" text={contact.phone} />
                <ContactItem icon={<MessageCircle className="h-5 w-5" />} title="Email" text={contact.email} />
                <ContactItem
                  icon={<Clock3 className="h-5 w-5" />}
                  title="Режим работы"
                  text={contact.workingHours.join(" • ")}
                />
              </div>
              <div className="mt-6 flex flex-wrap gap-3">
                <a href={contact.whatsapp} className="rounded-full bg-secondary px-4 py-2 text-sm font-medium">
                  WhatsApp
                </a>
                <a href={contact.telegram} className="rounded-full bg-secondary px-4 py-2 text-sm font-medium">
                  Telegram
                </a>
              </div>
              <div className="mt-6 rounded-3xl border border-border bg-muted/50 p-4 text-sm text-muted-foreground">
                <p className="font-medium text-foreground">Как добраться</p>
                <ul className="mt-2 space-y-2">
                  {contact.directions.map((item) => (
                    <li key={item}>• {item}</li>
                  ))}
                </ul>
                <p className="mt-4">Парковка: {contact.parking}</p>
              </div>
            </div>

            <div className="overflow-hidden rounded-[28px] border border-border bg-card shadow-soft">
              <iframe
                title="Карта клиники"
                src={`https://www.google.com/maps?q=${contact.coordinates.lat},${contact.coordinates.lng}&z=16&output=embed`}
                className="h-[360px] w-full border-0"
                loading="lazy"
                referrerPolicy="no-referrer-when-downgrade"
              />
            </div>
          </div>

          <AppointmentForm page="/contacts" />
        </div>
      </Container>
    </section>
  );
}

function ContactItem({
  icon,
  title,
  text,
}: {
  icon: React.ReactNode;
  title: string;
  text: string;
}) {
  return (
    <div className="flex gap-4">
      <div className="mt-1 inline-flex h-10 w-10 items-center justify-center rounded-2xl bg-primary/10 text-primary">
        {icon}
      </div>
      <div>
        <p className="text-sm font-medium">{title}</p>
        <p className="mt-1 text-sm text-muted-foreground">{text}</p>
      </div>
    </div>
  );
}
