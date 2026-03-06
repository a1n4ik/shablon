import Image from "next/image";
import Link from "next/link";
import type { Doctor } from "@/types";
import { Badge } from "@/shared/ui/badge";
import { Card, CardContent } from "@/shared/ui/card";
import { AppointmentModal } from "@/features/modals/appointment-modal";

export function DoctorCard({ doctor }: { doctor: Doctor }) {
  return (
    <Card className="overflow-hidden">
      <div className="grid gap-0 md:grid-cols-[220px_1fr]">
        <div className="relative min-h-[220px] bg-muted">
          <Image
            src={doctor.photo}
            alt={doctor.name}
            fill
            className="object-cover"
            sizes="(max-width: 768px) 100vw, 220px"
          />
        </div>
        <CardContent className="flex flex-col justify-between p-6">
          <div>
            <Badge className="mb-3">Стаж {doctor.experienceYears} лет</Badge>
            <h3 className="text-2xl font-semibold">
              <Link href={`/doctors/${doctor.slug}`} className="hover:text-primary">
                {doctor.name}
              </Link>
            </h3>
            <p className="mt-2 text-sm font-medium text-primary">{doctor.specialization}</p>
            <p className="mt-3 text-sm leading-6 text-muted-foreground">{doctor.excerpt}</p>
          </div>
          <div className="mt-6 flex flex-col gap-3 sm:flex-row sm:items-center">
            <AppointmentModal triggerLabel="Записаться" page={`/doctors/${doctor.slug}`} doctorSlug={doctor.slug} />
            <Link href={`/doctors/${doctor.slug}`} className="text-sm font-semibold text-primary hover:text-primary/80">
              Подробнее о враче
            </Link>
          </div>
        </CardContent>
      </div>
    </Card>
  );
}
