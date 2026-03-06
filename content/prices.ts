import type { PriceCategory } from "@/types";

export const priceCategories: PriceCategory[] = [
  {
    slug: "consultations",
    title: "Консультации врачей",
    description:
      "Основные первичные и повторные консультации профильных специалистов.",
    items: [
      {
        slug: "terapevt-pervichnyi",
        name: "Терапевт — первичный приём",
        price: 2200,
        serviceSlug: "terapiya"
      },
      {
        slug: "terapevt-povtornyi",
        name: "Терапевт — повторный приём",
        price: 1800,
        serviceSlug: "terapiya"
      },
      {
        slug: "ginekolog-pervichnyi",
        name: "Гинеколог — первичный приём",
        price: 2500,
        serviceSlug: "ginekologiya"
      },
      {
        slug: "kardiolog-pervichnyi",
        name: "Кардиолог — первичный приём",
        price: 2800,
        serviceSlug: "kardiologiya"
      },
      {
        slug: "gastroenterolog-pervichnyi",
        name: "Гастроэнтеролог — первичный приём",
        price: 2600,
        serviceSlug: "gastroenterologiya"
      },
      {
        slug: "endokrinolog-pervichnyi",
        name: "Эндокринолог — первичный приём",
        price: 2700,
        serviceSlug: "endokrinologiya"
      }
    ]
  },
  {
    slug: "diagnostics",
    title: "УЗИ и диагностика",
    description:
      "Базовые диагностические исследования с возможностью пройти консультацию врача в тот же день.",
    items: [
      {
        slug: "uzi-brushnoi-polosti",
        name: "УЗИ органов брюшной полости",
        price: 1900,
        serviceSlug: "uzi"
      },
      {
        slug: "uzi-malogo-taza",
        name: "УЗИ органов малого таза",
        price: 2100,
        serviceSlug: "uzi"
      },
      {
        slug: "uzi-shitovidnoi-zhelezy",
        name: "УЗИ щитовидной железы",
        price: 1600,
        serviceSlug: "uzi"
      },
      {
        slug: "ekg-rasshifrovka",
        name: "ЭКГ с расшифровкой",
        price: 1300,
        note: "По записи"
      }
    ]
  },
  {
    slug: "laboratory",
    title: "Анализы и чек-апы",
    description:
      "Популярные лабораторные исследования и комплексные программы обследования.",
    items: [
      {
        slug: "oak",
        name: "Общий анализ крови",
        price: 350,
        serviceSlug: "analizy"
      },
      {
        slug: "biohimiya-bazovaya",
        name: "Биохимия крови — базовая панель",
        price: 1900,
        serviceSlug: "analizy"
      },
      {
        slug: "gormon-ttg",
        name: "ТТГ",
        price: 690,
        serviceSlug: "analizy"
      },
      {
        slug: "check-up-bazovyi-zhenskii",
        name: "Чек-ап женский базовый",
        price: 11900,
        serviceSlug: "check-up"
      },
      {
        slug: "check-up-cardiometabolic",
        name: "Кардиометаболический чек-ап",
        price: 14900,
        serviceSlug: "check-up"
      }
    ]
  }
];
