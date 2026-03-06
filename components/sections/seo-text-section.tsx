import { Container } from "@/components/layout/container";

type SeoTextSectionProps = {
  title: string;
  paragraphs: string[];
};

export function SeoTextSection({ title, paragraphs }: SeoTextSectionProps) {
  return (
    <section className="py-10 md:py-14">
      <Container>
        <div className="rounded-[32px] border border-border bg-card p-6 shadow-soft md:p-8">
          <h2 className="text-2xl font-semibold md:text-3xl">{title}</h2>
          <div className="mt-4 space-y-4 text-sm leading-7 text-muted-foreground md:text-base">
            {paragraphs.map((paragraph) => (
              <p key={paragraph}>{paragraph}</p>
            ))}
          </div>
        </div>
      </Container>
    </section>
  );
}
