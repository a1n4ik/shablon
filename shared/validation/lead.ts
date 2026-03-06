import { z } from "zod";

export const leadSchema = z.object({
  name: z.string().min(2, "Укажите имя"),
  phone: z
    .string()
    .min(10, "Укажите телефон")
    .regex(/^[+\d()\s-]+$/, "Некорректный телефон"),
  preferredDate: z.string().optional(),
  message: z.string().max(1000, "Слишком длинное сообщение").optional(),
  serviceSlug: z.string().optional(),
  doctorSlug: z.string().optional(),
  page: z.string().optional(),
  formType: z.enum(["appointment", "callback", "question"]),
  consent: z.literal(true, {
    errorMap: () => ({ message: "Нужно согласие на обработку данных" }),
  }),
  website: z.string().optional(),
  startedAt: z.number().optional(),
});

export type LeadSchema = z.infer<typeof leadSchema>;
