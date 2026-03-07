#!/usr/bin/env bash
set -euo pipefail

# Быстрый запуск Next.js рядом с WordPress
# Использование:
#   ./scripts/run-next-near-wp.sh [port]

PORT_VALUE="${1:-3001}"

if [[ ! -f package.json ]]; then
  echo "❌ Запустите скрипт из корня проекта (где package.json)."
  exit 1
fi

if [[ ! -f .env.local ]]; then
  cp .env.example .env.local
  echo "ℹ️ Создан .env.local из .env.example"
fi

echo "➡️ Устанавливаю зависимости..."
npm install

echo "➡️ Собираю проект..."
npm run build

echo "✅ Запускаю сайт на порту ${PORT_VALUE}"
PORT="${PORT_VALUE}" npm run start
