import { AppointmentModal } from "@/features/modals/appointment-modal";
import { Button } from "@/shared/ui/button";
import { Container } from "@/components/layout/container";

type CtaStripProps = {
  title: string;
  description: string;
  page?: string;
};

export function CtaStrip({ title, description, page }: CtaStripProps) {
  return (
    <section className="py-8">
      <Container>
        <div className="rounded-[32px] bg-primary px-6 py-8 text-primary-foreground shadow-soft md:px-10 md:py-10">
          <div className="flex flex-col gap-6 md:flex-row md:items-center md:justify-between">
            <div className="max-w-2xl">
              <h2 className="text-2xl font-semibold md:text-3xl">{title}</h2>
              <p className="mt-3 text-primary-foreground/85">{description}</p>
            </div>
            <div className="flex flex-col gap-3 sm:flex-row">
              <AppointmentModal triggerLabel="Записаться" triggerVariant="secondary" page={page} />
              <Button asChild variant="outline" className="border-white/30 bg-transparent text-white hover:bg-white/10">
                <a href="tel:+78612054477">Позвонить</a>
              </Button>
            </div>
          </div>
        </div>
      </Container>
    </section>
  );
}
