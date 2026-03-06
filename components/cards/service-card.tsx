import Link from "next/link";
import { ArrowUpRight } from "lucide-react";
import type { Service } from "@/types";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/shared/ui/card";
import { Badge } from "@/shared/ui/badge";
import { formatPrice } from "@/lib/utils";

export function ServiceCard({ service }: { service: Service }) {
  return (
    <Card className="h-full">
      <CardHeader>
        <div className="mb-3 flex items-start justify-between gap-3">
          <Badge>от {formatPrice(service.priceFrom)}</Badge>
          <ArrowUpRight className="h-5 w-5 text-primary" />
        </div>
        <CardTitle>{service.name}</CardTitle>
        <CardDescription className="mt-2 text-sm leading-6">
          {service.shortDescription}
        </CardDescription>
      </CardHeader>
      <CardContent className="mt-auto flex items-center justify-between gap-3">
        <ul className="line-clamp-2 max-w-[70%] space-y-1 text-sm text-muted-foreground">
          {service.symptoms.slice(0, 2).map((item) => (
            <li key={item}>• {item}</li>
          ))}
        </ul>
        <Link
          href={`/services/${service.slug}`}
          className="text-sm font-semibold text-primary transition-colors hover:text-primary/80"
        >
          Подробнее
        </Link>
      </CardContent>
    </Card>
  );
}
