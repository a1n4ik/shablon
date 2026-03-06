import Image from "next/image";
import type { LicenseDocument } from "@/types";
import { Container } from "@/components/layout/container";
import { SectionHeading } from "@/components/common/section-heading";
import { Card, CardContent } from "@/shared/ui/card";
import { formatDate } from "@/lib/utils";

export function LicensesSection({ licenses }: { licenses: LicenseDocument[] }) {
  return (
    <section className="py-14 md:py-20">
      <Container>
        <SectionHeading
          eyebrow="Лицензии и документы"
          title="Прозрачные документы и доверительные факторы"
          description="Лицензии, юридические данные и фотографии клиники — важная часть медицинского сайта и E-E-A-T."
        />
        <div className="grid gap-5 md:grid-cols-2">
          {licenses.map((license) => (
            <Card key={license.number} className="overflow-hidden">
              <div className="relative aspect-[4/3] bg-muted">
                <Image
                  src={license.fileUrl}
                  alt={license.title}
                  fill
                  className="object-cover"
                  sizes="(max-width: 768px) 100vw, 50vw"
                />
              </div>
              <CardContent className="p-6">
                <h3 className="text-xl font-semibold">{license.title}</h3>
                <p className="mt-2 text-sm text-muted-foreground">№ {license.number}</p>
                <p className="mt-1 text-sm text-muted-foreground">Выдана {formatDate(license.issuedAt)}</p>
              </CardContent>
            </Card>
          ))}
        </div>
      </Container>
    </section>
  );
}
