# Быстрая установка и запуск рядом с WordPress

Ниже самый простой сценарий, чтобы **положить проект рядом с WP** и запустить без разрушения текущего WordPress-сайта.

## 1) Куда положить файлы

Пример структуры:

```bash
/var/www/
  wordpress/          # ваш текущий WP
  persona-next/       # этот проект Next.js
```

Скопируйте репозиторий в `persona-next`.

---

## 2) Требования на сервере

- Node.js 20+
- npm 10+
- Nginx (если нужен публичный доступ)

Проверка:

```bash
node -v
npm -v
```

---

## 3) Быстрый старт (локально на сервере)

```bash
cd /var/www/persona-next
cp .env.example .env.local
```

Проверьте `.env.local`:

- `NEXT_PUBLIC_SITE_URL=https://persona26med.ru`
- `SQLITE_DB_PATH=./data/site.db`
- `ADMIN_LOGIN=admin`
- `ADMIN_PASSWORD=...` (обязательно поменять)
- `ADMIN_SESSION_SECRET=...` (обязательно длинный секрет)

Далее:

```bash
npm install
npm run build
PORT=3001 npm run start
```

После этого сайт будет доступен на `http://127.0.0.1:3001`.

---

## 4) Запуск рядом с WP через Nginx

Идея:
- WordPress остаётся основным сайтом (например, `/`),
- Next.js подключается в подкаталог, например `/persona/`.

Пример блока `location`:

```nginx
# Next.js рядом с WordPress
location /persona/ {
    proxy_pass http://127.0.0.1:3001/;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection "upgrade";
    proxy_set_header Host $host;
    proxy_cache_bypass $http_upgrade;
}
```

После изменения конфига:

```bash
sudo nginx -t && sudo systemctl reload nginx
```

---

## 5) Рекомендуемый прод-режим (через PM2)

```bash
npm i -g pm2
cd /var/www/persona-next
pm2 start "npm run start -- --port 3001" --name persona-next
pm2 save
pm2 startup
```

---

## 6) Обновление сайта

```bash
cd /var/www/persona-next
git pull
npm install
npm run build
pm2 restart persona-next
```

---

## 7) Важные замечания

1. Админка доступна по `/admin/login`.
2. Контент хранится в SQLite (`SQLITE_DB_PATH`) и используется сайтом без пересборки.
3. Если хотите полностью заменить WP — просто переключите `proxy_pass` для `/` на порт Next.js.

