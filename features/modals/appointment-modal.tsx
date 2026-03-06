"use client";

import { Button } from "@/shared/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/shared/ui/dialog";
import { AppointmentForm } from "@/features/forms/appointment-form";

type AppointmentModalProps = {
  triggerLabel?: string;
  triggerVariant?: "default" | "outline" | "secondary" | "ghost";
  page?: string;
  serviceSlug?: string;
  doctorSlug?: string;
};

export function AppointmentModal({
  triggerLabel = "Записаться",
  triggerVariant = "default",
  page,
  serviceSlug,
  doctorSlug,
}: AppointmentModalProps) {
  return (
    <Dialog>
      <DialogTrigger asChild>
        <Button variant={triggerVariant}>{triggerLabel}</Button>
      </DialogTrigger>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>Запись на приём</DialogTitle>
          <DialogDescription>
            Оставьте контакты — мы поможем выбрать врача, услугу и удобное время визита.
          </DialogDescription>
        </DialogHeader>
        <AppointmentForm
          compact
          page={page}
          serviceSlug={serviceSlug}
          doctorSlug={doctorSlug}
        />
      </DialogContent>
    </Dialog>
  );
}
