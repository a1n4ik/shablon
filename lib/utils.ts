import { clsx, type ClassValue } from "clsx";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function absoluteUrl(path = "") {
  const origin = process.env.NEXT_PUBLIC_SITE_URL ?? "https://medprime-clinic.ru";
  return new URL(path, origin).toString();
}

export function formatPrice(price: number | string) {
  if (typeof price === "string") return price;
  return new Intl.NumberFormat("ru-RU").format(price) + " ₽";
}

export function formatDate(date: string) {
  return new Intl.DateTimeFormat("ru-RU", {
    day: "numeric",
    month: "long",
    year: "numeric",
  }).format(new Date(date));
}

export function slugToTitle(slug: string) {
  return slug
    .split("-")
    .map((part) => part[0]?.toUpperCase() + part.slice(1))
    .join(" ");
}
