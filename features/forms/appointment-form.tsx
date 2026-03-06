"use client";

import { useMemo, useState } from "react";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { leadSchema, type LeadSchema } from "@/shared/validation/lead";
import { Input } from "@/shared/ui/input";
import { Textarea } from "@/shared/ui/textarea";
import { Button } from "@/shared/ui/button";
import { cn } from "@/lib/utils";

type AppointmentFormProps = {
  title?: string;
  description?: string;
  page?: string;
  serviceSlug?: string;
  doctorSlug?: string;
  formType?: LeadSchema["formType"];
  compact?: boolean;
};

export function AppointmentForm({
  title = "Записаться на приём",
  description = "Оставьте заявку — администратор поможет подобрать врача и удобное время.",
  page,
  serviceSlug,
  doctorSlug,
  formType = "appointment",
  compact = false,
}: AppointmentFormProps) {
  const startedAt = useMemo(() => Date.now(), []);
  const [serverState, setServerState] = useState<{
    status: "idle" | "success" | "error";
    message?: string;
  }>({ status: "idle" });

  const form = useForm<LeadSchema>({
    resolver: zodResolver(leadSchema),
    defaultValues: {
      name: "",
      phone: "",
      preferredDate: "",
      message: "",
      serviceSlug,
      doctorSlug,
      page,
      formType,
      consent: true,
      website: "",
      startedAt,
    },
  });

  const onSubmit = form.handleSubmit(async (values) => {
    setServerState({ status: "idle" });

    const response = await fetch("/api/leads", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(values),
    });

    const data = (await response.json()) as { ok?: boolean; message?: string };

    if (!response.ok || !data.ok) {
      setServerState({
        status: "error",
        message: data.message ?? "Не удалось отправить заявку. Попробуйте ещё раз.",
      });
      return;
    }

    setServerState({
      status: "success",
      message: "Спасибо! Мы свяжемся с вами в ближайшее время.",
    });
    form.reset({
      name: "",
      phone: "",
      preferredDate: "",
      message: "",
      serviceSlug,
      doctorSlug,
      page,
      formType,
      consent: true,
      website: "",
      startedAt: Date.now(),
    });
  });

  return (
    <div className={cn("rounded-[28px] border border-border bg-card p-6 shadow-soft", compact && "p-5")}>
      <div className="mb-5">
        <h3 className="text-2xl font-semibold tracking-tight">{title}</h3>
        <p className="mt-2 max-w-2xl text-sm text-muted-foreground">{description}</p>
      </div>

      <form onSubmit={onSubmit} className="grid gap-4 md:grid-cols-2">
        <div className="space-y-2">
          <label className="text-sm font-medium">Имя</label>
          <Input placeholder="Как к вам обращаться" {...form.register("name")} />
          {form.formState.errors.name ? (
            <p className="text-xs text-rose-600">{form.formState.errors.name.message}</p>
          ) : null}
        </div>

        <div className="space-y-2">
          <label className="text-sm font-medium">Телефон</label>
          <Input placeholder="+7 (___) ___-__-__" {...form.register("phone")} />
          {form.formState.errors.phone ? (
            <p className="text-xs text-rose-600">{form.formState.errors.phone.message}</p>
          ) : null}
        </div>

        <div className="space-y-2">
          <label className="text-sm font-medium">Предпочтительная дата</label>
          <Input type="date" {...form.register("preferredDate")} />
        </div>

        <div className="space-y-2">
          <label className="text-sm font-medium">Тип обращения</label>
          <select
            className="flex h-11 w-full rounded-2xl border border-input bg-background px-4 py-2 text-sm shadow-sm focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring"
            {...form.register("formType")}
          >
            <option value="appointment">Запись на приём</option>
            <option value="callback">Обратный звонок</option>
            <option value="question">Вопрос по услуге</option>
          </select>
        </div>

        <div className="space-y-2 md:col-span-2">
          <label className="text-sm font-medium">Комментарий</label>
          <Textarea
            placeholder="Опишите жалобу, услугу или врача, к которому хотите записаться"
            {...form.register("message")}
          />
          {form.formState.errors.message ? (
            <p className="text-xs text-rose-600">{form.formState.errors.message.message}</p>
          ) : null}
        </div>

        <input type="hidden" {...form.register("page")} />
        <input type="hidden" {...form.register("serviceSlug")} />
        <input type="hidden" {...form.register("doctorSlug")} />
        <input type="hidden" {...form.register("website")} tabIndex={-1} autoComplete="off" />
        <input type="hidden" value={startedAt} {...form.register("startedAt", { valueAsNumber: true })} />

        <label className="flex items-start gap-3 text-sm text-muted-foreground md:col-span-2">
          <input type="checkbox" className="mt-1 h-4 w-4 rounded border-border" {...form.register("consent")} />
          <span>
            Я соглашаюсь на обработку персональных данных и принимаю политику конфиденциальности.
          </span>
        </label>
        {form.formState.errors.consent ? (
          <p className="-mt-2 text-xs text-rose-600 md:col-span-2">{form.formState.errors.consent.message}</p>
        ) : null}

        <div className="flex flex-col gap-3 md:col-span-2 md:flex-row md:items-center">
          <Button type="submit" size="lg" disabled={form.formState.isSubmitting}>
            {form.formState.isSubmitting ? "Отправляем..." : "Отправить заявку"}
          </Button>
          <a
            href="tel:+78612054477"
            className="text-sm font-medium text-primary underline-offset-4 hover:underline"
          >
            Или позвоните: +7 (861) 205-44-77
          </a>
        </div>

        {serverState.status !== "idle" ? (
          <p
            className={cn(
              "text-sm md:col-span-2",
              serverState.status === "success" ? "text-emerald-700" : "text-rose-600",
            )}
          >
            {serverState.message}
          </p>
        ) : null}
      </form>
    </div>
  );
}
