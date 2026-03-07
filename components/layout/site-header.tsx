import Link from "next/link";
import { PhoneCall } from "lucide-react";
import { mainNavigation } from "@/config/navigation";
import { MobileNav } from "@/components/layout/mobile-nav";
import { AppointmentModal } from "@/features/modals/appointment-modal";
import { Container } from "@/components/layout/container";
import { siteConfig } from "@/config/site";

export function SiteHeader() {
  return (
    <header className="sticky top-0 z-40 border-b border-border/70 bg-background/90 backdrop-blur">
      <Container className="flex h-16 items-center justify-between gap-6">
        <Link href="/" className="flex min-w-0 items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-2xl bg-primary text-sm font-bold text-primary-foreground">
            П
          </div>
          <div className="min-w-0">
            <div className="truncate text-sm font-semibold">{siteConfig.name}</div>
            <div className="truncate text-xs text-muted-foreground">Медицинский центр</div>
          </div>
        </Link>

        <nav className="hidden items-center gap-6 lg:flex">
          {mainNavigation.map((item) => (
            <Link
              key={item.href}
              href={item.href as any}
              className="text-sm font-medium text-foreground/90 transition-colors hover:text-primary"
            >
              {item.label}
            </Link>
          ))}
        </nav>

        <div className="hidden items-center gap-3 lg:flex">
          <a
            href={`tel:${siteConfig.phone.replace(/[^\d+]/g, "")}`}
            className="inline-flex items-center gap-2 text-sm font-medium text-foreground transition-colors hover:text-primary"
          >
            <PhoneCall className="h-4 w-4" />
            {siteConfig.phone}
          </a>
          <AppointmentModal triggerLabel="Записаться" page="header" />
        </div>

        <MobileNav />
      </Container>
    </header>
  );
}
