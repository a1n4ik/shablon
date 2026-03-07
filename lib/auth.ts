import { cookies } from "next/headers";

const ADMIN_COOKIE_NAME = "admin_session";
const ADMIN_LOGIN = process.env.ADMIN_LOGIN ?? "admin";
const ADMIN_PASSWORD = process.env.ADMIN_PASSWORD ?? "change-me";
const ADMIN_SESSION_SECRET = process.env.ADMIN_SESSION_SECRET ?? "local-secret";

function encodeBase64(value: string) {
  return Buffer.from(value, "utf-8").toString("base64url");
}

function decodeBase64(value: string) {
  return Buffer.from(value, "base64url").toString("utf-8");
}

function createSessionValue(username: string) {
  const payload = `${username}:${Date.now()}:${ADMIN_SESSION_SECRET}`;
  return encodeBase64(payload);
}

export function verifySessionToken(value: string | undefined) {
  if (!value) {
    return false;
  }

  try {
    const decoded = decodeBase64(value);
    const [username, issuedAt, secret] = decoded.split(":");

    if (!username || !issuedAt || !secret) {
      return false;
    }

    return secret === ADMIN_SESSION_SECRET;
  } catch {
    return false;
  }
}

export async function isAdminAuthenticated() {
  const cookieStore = await cookies();
  const sessionCookie = cookieStore.get(ADMIN_COOKIE_NAME)?.value;
  return verifySessionToken(sessionCookie);
}

export function verifyAdminCredentials(login: string, password: string) {
  return login === ADMIN_LOGIN && password === ADMIN_PASSWORD;
}

export async function setAdminSession(username: string) {
  const cookieStore = await cookies();
  cookieStore.set(ADMIN_COOKIE_NAME, createSessionValue(username), {
    httpOnly: true,
    sameSite: "lax",
    secure: process.env.NODE_ENV === "production",
    path: "/",
    maxAge: 60 * 60 * 8,
  });
}

export async function clearAdminSession() {
  const cookieStore = await cookies();
  cookieStore.delete(ADMIN_COOKIE_NAME);
}

export function getAuthCookieName() {
  return ADMIN_COOKIE_NAME;
}
