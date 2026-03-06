import Link from "next/link";
import type { Doctor } from "@/types";
import { Container } from "@/components/layout/container";
import { SectionHeading } from "@/components/common/section-heading";
import { Button } from "@/shared/ui/button";
import { DoctorCard } from "@/components/cards/doctor-card";

export function DoctorsSection({ doctors }: { doctors: Doctor[] }) {
  return (
    <section className="bg-muted/30 py-14 md:py-20">
      <Container>
        <SectionHeading
          eyebrow="Врачи клиники"
          title="Отдельные страницы врачей усиливают E-E-A-T и помогают конверсии в запись"
          description="Каждый профиль врача содержит образование, сертификаты, направления работы, услуги, отзывы, FAQ и schema.org Physician."
          action={
            <Button asChild variant="outline">
              <Link href="/doctors">Все специалисты</Link>
            </Button>
          }
        />
        <div className="grid gap-5">
          {doctors.map((doctor) => (
            <DoctorCard key={doctor.slug} doctor={doctor} />
          ))}
        </div>
      </Container>
    </section>
  );
}
