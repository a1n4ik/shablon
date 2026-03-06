import type { FAQItem } from "@/types";
import { Container } from "@/components/layout/container";
import { SectionHeading } from "@/components/common/section-heading";
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "@/shared/ui/accordion";

type FaqSectionProps = {
  title?: string;
  description?: string;
  items: FAQItem[];
};

export function FaqSection({
  title = "Частые вопросы",
  description = "Блок FAQ полезен для пользователя и может быть размечен как FAQPage на ключевых страницах.",
  items,
}: FaqSectionProps) {
  return (
    <section className="py-14 md:py-20">
      <Container>
        <SectionHeading eyebrow="FAQ" title={title} description={description} />
        <div className="grid gap-3">
          <Accordion type="single" collapsible className="space-y-3">
            {items.map((item, index) => (
              <AccordionItem key={item.question} value={`item-${index}`}>
                <AccordionTrigger>{item.question}</AccordionTrigger>
                <AccordionContent>{item.answer}</AccordionContent>
              </AccordionItem>
            ))}
          </Accordion>
        </div>
      </Container>
    </section>
  );
}
