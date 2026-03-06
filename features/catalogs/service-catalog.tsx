"use client";

import { useMemo, useState } from "react";
import type { Service, ServiceCategory } from "@/types";
import { filterServices } from "@/entities/service";
import { ServiceCard } from "@/components/cards/service-card";
import { Input } from "@/shared/ui/input";
import { Button } from "@/shared/ui/button";

type ServiceCatalogProps = {
  services: Service[];
  categories: ServiceCategory[];
};

export function ServiceCatalog({ services, categories }: ServiceCatalogProps) {
  const [query, setQuery] = useState("");
  const [category, setCategory] = useState("all");

  const filtered = useMemo(
    () => filterServices(services, query, category),
    [services, query, category],
  );

  return (
    <div className="space-y-6">
      <div className="grid gap-3 rounded-[28px] border border-border bg-card p-5 shadow-soft md:grid-cols-[1.3fr_1fr]">
        <Input
          placeholder="Поиск по услугам"
          value={query}
          onChange={(event) => setQuery(event.target.value)}
        />
        <div className="flex flex-wrap gap-2">
          <Button
            type="button"
            variant={category === "all" ? "default" : "outline"}
            onClick={() => setCategory("all")}
          >
            Все направления
          </Button>
          {categories.map((item) => (
            <Button
              key={item.slug}
              type="button"
              variant={category === item.slug ? "default" : "outline"}
              onClick={() => setCategory(item.slug)}
            >
              {item.name}
            </Button>
          ))}
        </div>
      </div>

      <div className="grid gap-5 lg:grid-cols-2">
        {filtered.map((service) => (
          <ServiceCard key={service.slug} service={service} />
        ))}
      </div>

      {filtered.length === 0 ? (
        <div className="rounded-[28px] border border-dashed border-border p-8 text-center text-muted-foreground">
          По заданным параметрам услуги не найдены.
        </div>
      ) : null}
    </div>
  );
}
