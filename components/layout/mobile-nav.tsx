"use client";

import { useState } from "react";
import Link from "next/link";
import { Menu, X } from "lucide-react";
import { mainNavigation } from "@/config/navigation";
import { Button } from "@/shared/ui/button";
import { AppointmentModal } from "@/features/modals/appointment-modal";

export function MobileNav() {
  const [open, setOpen] = useState(false);

  return (
    <div className="lg:hidden">
      <Button variant="outline" size="icon" aria-label="Открыть меню" onClick={() => setOpen(true)}>
        <Menu className="h-5 w-5" />
      </Button>

      {open ? (
        <div className="fixed inset-0 z-[60] bg-background/95 backdrop-blur">
          <div className="container flex h-16 items-center justify-between">
            <span className="text-lg font-semibold">Меню</span>
            <Button variant="ghost" size="icon" aria-label="Закрыть меню" onClick={() => setOpen(false)}>
              <X className="h-5 w-5" />
            </Button>
          </div>
          <div className="container space-y-6 py-6">
            <nav className="grid gap-3">
              {mainNavigation.map((item) => (
                <Link
                  key={item.href}
                  href={item.href as any}
                  onClick={() => setOpen(false)}
                  className="rounded-2xl border border-border px-4 py-3 text-base font-medium hover:bg-muted"
                >
                  {item.label}
                </Link>
              ))}
            </nav>
            <div className="grid gap-3">
              <AppointmentModal triggerLabel="Записаться" page="mobile-menu" />
              <Button asChild variant="outline">
                <a href="tel:+78612054477">Позвонить</a>
              </Button>
            </div>
          </div>
        </div>
      ) : null}
    </div>
  );
}
