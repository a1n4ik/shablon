import fs from "node:fs";
import path from "node:path";
import { DatabaseSync } from "node:sqlite";

declare global {
  // eslint-disable-next-line no-var
  var __db__: DatabaseSync | undefined;
}

const dbFilePath = process.env.SQLITE_DB_PATH ?? path.join(process.cwd(), "data", "site.db");

function createDatabase() {
  fs.mkdirSync(path.dirname(dbFilePath), { recursive: true });
  const database = new DatabaseSync(dbFilePath);

  database.exec(`
    PRAGMA journal_mode = WAL;

    CREATE TABLE IF NOT EXISTS cms_overrides (
      id INTEGER PRIMARY KEY CHECK (id = 1),
      content TEXT NOT NULL,
      updated_at TEXT NOT NULL DEFAULT (datetime('now'))
    );
  `);

  return database;
}

export function getDb() {
  if (!global.__db__) {
    global.__db__ = createDatabase();
  }

  return global.__db__;
}

export function getDbInfo() {
  return { dbFilePath };
}
