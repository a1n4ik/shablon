# Медицинский центр на Next.js

Готовый SEO-ориентированный каркас сайта частной клиники на **Next.js 15 + TypeScript + App Router + Tailwind CSS + shadcn/ui**.

## Что уже включено

- App Router с серверными страницами под SEO
- metadata API, canonical, Open Graph, Twitter Cards
- `robots.ts`, `sitemap.ts`, `icon.tsx`, `opengraph-image.tsx`
- JSON-LD schema.org для `MedicalClinic`, `Physician`, `Article`, `FAQPage`, `BreadcrumbList`, `Service`
- локальное SEO под город
- страницы: главная, о клинике, услуги, услуга, врачи, врач, статьи, статья, цены, FAQ, контакты
- формы с `React Hook Form + Zod`
- API route для заявок
- mock data и headless-CMS-ready слой доступа к данным
- адаптивный UI, sticky header, мобильное меню, modal записи

## Быстрый старт

```bash
cp .env.example .env.local
npm install
npm run dev
```

## Что менять в первую очередь

1. `config/site.ts` — бренд, контакты, город, координаты.
2. `content/*` — услуги, врачи, статьи, цены, FAQ, отзывы.
3. `lib/lead-delivery.ts` — интеграции с CRM / email / Telegram / webhook.
4. `public/images/*` — реальные фото и документы.
5. `app/opengraph-image.tsx` — брендированная OG-картинка.

## Архитектура

Контент сейчас хранится в `content/*`, но весь сайт читает его через `lib/content-api.ts`. Это позволяет позже заменить источник данных на Strapi, Sanity, Directus или собственный backend без переписывания страниц.


## Переменные окружения

- `NEXT_PUBLIC_SITE_URL` — базовый адрес сайта для canonical, sitemap и schema.
- `LEADS_WEBHOOK_URL` — webhook для отправки заявок в CRM / Telegram / email-bridge.
- `SQLITE_DB_PATH` — путь к SQLite-базе сайта (контент админ-панели).
- `ADMIN_LOGIN` — логин администратора.
- `ADMIN_PASSWORD` — пароль администратора.
- `ADMIN_SESSION_SECRET` — секрет подписи cookie-сессии админа.
