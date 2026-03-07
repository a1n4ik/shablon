import { NextResponse } from "next/server";
import type { NextRequest } from "next/server";

const ADMIN_COOKIE_NAME = "admin_session";
const ADMIN_SESSION_SECRET = process.env.ADMIN_SESSION_SECRET ?? "local-secret";

function verifySessionToken(value: string | undefined) {
  if (!value) {
    return false;
  }

  try {
    const normalized = value.replace(/-/g, "+").replace(/_/g, "/");
    const padded = normalized + "=".repeat((4 - (normalized.length % 4)) % 4);
    const decoded = atob(padded);
    const parts = decoded.split(":");
    const secret = parts[2];

    return secret === ADMIN_SESSION_SECRET;
  } catch {
    return false;
  }
}

function isProtectedPath(pathname: string) {
  if (pathname.startsWith("/admin") && pathname !== "/admin/login") {
    return true;
  }

  if (pathname.startsWith("/api/admin") && pathname !== "/api/admin/login") {
    return true;
  }

  return false;
}

export function middleware(request: NextRequest) {
  if (!isProtectedPath(request.nextUrl.pathname)) {
    return NextResponse.next();
  }

  const token = request.cookies.get(ADMIN_COOKIE_NAME)?.value;
  const isAuthorized = verifySessionToken(token);

  if (isAuthorized) {
    return NextResponse.next();
  }

  if (request.nextUrl.pathname.startsWith("/api/")) {
    return NextResponse.json({ message: "Требуется авторизация." }, { status: 401 });
  }

  const loginUrl = new URL("/admin/login", request.url);
  return NextResponse.redirect(loginUrl);
}

export const config = {
  matcher: ["/admin/:path*", "/api/admin/:path*"],
};
