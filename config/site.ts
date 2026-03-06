export const siteConfig = {
  name: "МедПрайм",
  legalName: 'ООО "МедПрайм Клиника"',
  url: "https://medprime-clinic.ru",
  city: "Краснодар",
  region: "Краснодарский край",
  tagline: "Точная диагностика и приём врачей без очередей",
  description:
    "Частный медицинский центр в Краснодаре: гинекология, терапия, кардиология, УЗИ, анализы и чек-апы. Современное оборудование, опытные врачи и запись на удобное время.",
  locale: "ru_RU",
  phone: "+7 (861) 205-44-77",
  email: "info@medprime-clinic.ru",
  address: "г. Краснодар, ул. Северная, 245",
  coordinates: {
    lat: 45.041268,
    lng: 38.976517
  },
  whatsapp: "https://wa.me/78612054477",
  telegram: "https://t.me/medprime_clinic",
  defaultOg: "/opengraph-image",
  themeColor: "#0f766e"
};

export type SiteConfig = typeof siteConfig;
