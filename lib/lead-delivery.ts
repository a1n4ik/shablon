import type { LeadFormPayload } from "@/types";

export async function deliverLead(payload: LeadFormPayload) {
  const webhookUrl = process.env.LEADS_WEBHOOK_URL;

  if (!webhookUrl) {
    console.info("Lead captured (mock mode)", payload);
    return { ok: true, delivery: "mock" as const };
  }

  const response = await fetch(webhookUrl, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(payload),
    cache: "no-store",
  });

  if (!response.ok) {
    throw new Error("Не удалось отправить заявку во внешний webhook.");
  }

  return { ok: true, delivery: "webhook" as const };
}
