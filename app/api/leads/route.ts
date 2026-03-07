import { NextResponse } from "next/server";
import { leadSchema } from "@/shared/validation/lead";
import { deliverLead } from "@/lib/lead-delivery";
import { sanitizeUnknown } from "@/lib/security";

export async function POST(request: Request) {
  try {
    const body = sanitizeUnknown(await request.json());
    const parsed = leadSchema.safeParse(body);

    if (!parsed.success) {
      return NextResponse.json(
        {
          ok: false,
          message: "Проверьте корректность заполнения формы.",
          errors: parsed.error.flatten(),
        },
        { status: 400 },
      );
    }

    const payload = parsed.data;

    if (payload.website) {
      return NextResponse.json({ ok: true, message: "Заявка принята." });
    }

    if (payload.startedAt && Date.now() - payload.startedAt < 1500) {
      return NextResponse.json(
        { ok: false, message: "Форма отправлена слишком быстро. Попробуйте ещё раз." },
        { status: 429 },
      );
    }

    await deliverLead(payload);

    return NextResponse.json({ ok: true, message: "Заявка отправлена." });
  } catch (error) {
    console.error(error);
    return NextResponse.json(
      { ok: false, message: "Не удалось обработать заявку. Попробуйте позже." },
      { status: 500 },
    );
  }
}
