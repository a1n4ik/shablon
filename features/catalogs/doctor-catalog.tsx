"use client";

import { useMemo, useState } from "react";
import type { Doctor } from "@/types";
import { filterDoctors } from "@/entities/doctor";
import { DoctorCard } from "@/components/cards/doctor-card";
import { Input } from "@/shared/ui/input";
import { Button } from "@/shared/ui/button";

type DoctorCatalogProps = {
  doctors: Doctor[];
};

export function DoctorCatalog({ doctors }: DoctorCatalogProps) {
  const specializations = Array.from(new Set(doctors.map((item) => item.specialization)));
  const [query, setQuery] = useState("");
  const [specialization, setSpecialization] = useState("all");

  const filtered = useMemo(
    () => filterDoctors(doctors, query, specialization),
    [doctors, query, specialization],
  );

  return (
    <div className="space-y-6">
      <div className="grid gap-3 rounded-[28px] border border-border bg-card p-5 shadow-soft md:grid-cols-[1.2fr_1fr]">
        <Input
          placeholder="Поиск по врачу или специализации"
          value={query}
          onChange={(event) => setQuery(event.target.value)}
        />
        <div className="flex flex-wrap gap-2">
          <Button
            type="button"
            variant={specialization === "all" ? "default" : "outline"}
            onClick={() => setSpecialization("all")}
          >
            Все
          </Button>
          {specializations.map((item) => (
            <Button
              key={item}
              type="button"
              variant={specialization === item ? "default" : "outline"}
              onClick={() => setSpecialization(item)}
            >
              {item}
            </Button>
          ))}
        </div>
      </div>

      <div className="grid gap-5 lg:grid-cols-2">
        {filtered.map((doctor) => (
          <DoctorCard key={doctor.slug} doctor={doctor} />
        ))}
      </div>

      {filtered.length === 0 ? (
        <div className="rounded-[28px] border border-dashed border-border p-8 text-center text-muted-foreground">
          По выбранным параметрам врачи не найдены.
        </div>
      ) : null}
    </div>
  );
}
