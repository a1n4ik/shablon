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

## Быстрая установка рядом с WordPress

См. пошаговый файл: `QUICK_INSTALL_RU.md`.

Также есть скрипт быстрого запуска:

```bash
./scripts/run-next-near-wp.sh 3001
```


## Где файл index и как запускать

Это проект на **Next.js App Router**, поэтому вместо классического `index.php`/`index.html` главная страница находится в:

- `app/page.tsx`

Чтобы был привычный точечный вход, добавлен корневой файл запуска:

```bash
node index.js         # production (next start)
node index.js --dev   # development (next dev)
```


## Troubleshooting Vercel: "No Next.js version detected"

Если Vercel пишет `No Next.js version detected`, проверьте:

1. **Root Directory** в настройках проекта Vercel должен указывать на корень репозитория (где лежит `package.json`).
2. В `package.json` есть `next` в `dependencies` (в этом проекте он уже есть).
3. Перезапустите деплой после очистки кэша (**Redeploy → Clear build cache**).

В проекте добавлен `vercel.json` с явным Next builder (`@vercel/next`) и командами install/build, чтобы Vercel корректно определял фреймворк.

