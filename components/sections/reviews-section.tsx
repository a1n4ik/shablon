import { Star } from "lucide-react";
import type { Review } from "@/types";
import { Container } from "@/components/layout/container";
import { SectionHeading } from "@/components/common/section-heading";
import { Card, CardContent } from "@/shared/ui/card";
import { formatDate } from "@/lib/utils";

export function ReviewsSection({ reviews }: { reviews: Review[] }) {
  return (
    <section className="py-14 md:py-20">
      <Container>
        <SectionHeading
          eyebrow="Отзывы"
          title="Социальное доказательство без перегруза интерфейса"
          description="Блок отзывов помогает доверию пользователя и усиливает коммерческие страницы."
        />
        <div className="grid gap-5 lg:grid-cols-3">
          {reviews.map((review) => (
            <Card key={`${review.author}-${review.date}`}>
              <CardContent className="p-6">
                <div className="mb-4 flex items-center gap-1 text-amber-500">
                  {Array.from({ length: review.rating }).map((_, index) => (
                    <Star key={index} className="h-4 w-4 fill-current" />
                  ))}
                </div>
                <p className="text-sm leading-7 text-foreground/90">“{review.text}”</p>
                <div className="mt-5">
                  <p className="font-semibold">{review.author}</p>
                  <p className="text-xs text-muted-foreground">{formatDate(review.date)}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      </Container>
    </section>
  );
}
