import Link from "next/link";
import { footerNavigation } from "@/config/navigation";
import { Container } from "@/components/layout/container";
import { siteConfig } from "@/config/site";

export function SiteFooter() {
  return (
    <footer className="border-t border-border bg-sky-950 text-sky-100">
      <Container className="grid gap-10 py-12 md:grid-cols-[1.2fr_repeat(3,1fr)]">
        <div className="space-y-4">
          <div>
            <p className="text-lg font-semibold">{siteConfig.name}</p>
            <p className="mt-2 max-w-sm text-sm text-sky-200">
              Частный медицинский центр в {siteConfig.city}: приём врачей, диагностика, анализы, чек-апы и понятный маршрут пациента.
            </p>
          </div>
          <div className="space-y-1 text-sm text-sky-200">
            <p>{siteConfig.address}</p>
            <p>{siteConfig.phone}</p>
            <p>{siteConfig.email}</p>
          </div>
        </div>

        <FooterGroup title="Клиника" items={footerNavigation.company} />
        <FooterGroup title="Услуги" items={footerNavigation.services} />
        <FooterGroup title="Разделы" items={footerNavigation.content} />
      </Container>
      <div className="border-t border-sky-900">
        <Container className="flex flex-col gap-2 py-4 text-xs text-sky-300 md:flex-row md:items-center md:justify-between">
          <p>© 2026 Персона. Все права защищены.</p>
          <p>Информация на сайте не заменяет консультацию врача и не является публичной офертой.</p>
        </Container>
      </div>
    </footer>
  );
}

function FooterGroup({
  title,
  items,
}: {
  title: string;
  items: Array<{ href: string; label: string }>;
}) {
  return (
    <div>
      <p className="mb-3 text-sm font-semibold text-white">{title}</p>
      <ul className="space-y-2">
        {items.map((item) => (
          <li key={item.href}>
            <Link href={item.href as any} className="text-sm text-sky-200 transition-colors hover:text-sky-50">
              {item.label}
            </Link>
          </li>
        ))}
      </ul>
    </div>
  );
}
