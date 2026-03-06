"use client";

import { useMemo, useState } from "react";
import Link from "next/link";
import type { PriceCategory } from "@/types";
import { flattenPrices } from "@/entities/price";
import { Input } from "@/shared/ui/input";
import { Button } from "@/shared/ui/button";
import { formatPrice } from "@/lib/utils";

type PriceCatalogProps = {
  categories: PriceCategory[];
};

export function PriceCatalog({ categories }: PriceCatalogProps) {
  const allItems = useMemo(() => flattenPrices(categories), [categories]);
  const [query, setQuery] = useState("");
  const [category, setCategory] = useState("all");

  const filtered = allItems.filter((item) => {
    const byCategory = category === "all" || item.categorySlug === category;
    const byQuery =
      !query ||
      item.name.toLowerCase().includes(query.toLowerCase()) ||
      item.categoryTitle.toLowerCase().includes(query.toLowerCase());

    return byCategory && byQuery;
  });

  return (
    <div className="space-y-6">
      <div className="grid gap-3 rounded-[28px] border border-border bg-card p-5 shadow-soft md:grid-cols-[1.2fr_1fr]">
        <Input
          placeholder="Поиск по прайсу"
          value={query}
          onChange={(event) => setQuery(event.target.value)}
        />
        <div className="flex flex-wrap gap-2">
          <Button
            type="button"
            variant={category === "all" ? "default" : "outline"}
            onClick={() => setCategory("all")}
          >
            Все категории
          </Button>
          {categories.map((item) => (
            <Button
              key={item.slug}
              type="button"
              variant={category === item.slug ? "default" : "outline"}
              onClick={() => setCategory(item.slug)}
            >
              {item.title}
            </Button>
          ))}
        </div>
      </div>

      <div className="overflow-hidden rounded-[28px] border border-border bg-card shadow-soft">
        <table className="w-full border-collapse text-left">
          <thead>
            <tr className="border-b border-border bg-muted/40">
              <th className="px-5 py-4 text-sm font-semibold">Услуга</th>
              <th className="px-5 py-4 text-sm font-semibold">Категория</th>
              <th className="px-5 py-4 text-sm font-semibold">Цена</th>
            </tr>
          </thead>
          <tbody>
            {filtered.map((item) => (
              <tr key={item.slug} className="border-b border-border last:border-b-0">
                <td className="px-5 py-4 text-sm">
                  {item.serviceSlug ? (
                    <Link href={`/services/${item.serviceSlug}`} className="font-medium hover:text-primary">
                      {item.name}
                    </Link>
                  ) : (
                    <span className="font-medium">{item.name}</span>
                  )}
                  {item.note ? <p className="mt-1 text-xs text-muted-foreground">{item.note}</p> : null}
                </td>
                <td className="px-5 py-4 text-sm text-muted-foreground">{item.categoryTitle}</td>
                <td className="px-5 py-4 text-sm font-semibold">{formatPrice(item.price)}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
