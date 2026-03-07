import { NextResponse } from "next/server";
import { setAdminSession, verifyAdminCredentials } from "@/lib/auth";
import { sanitizeUnknown } from "@/lib/security";

export async function POST(request: Request) {
  try {
    const body = sanitizeUnknown(await request.json()) as { login?: string; password?: string };

    if (!body.login || !body.password) {
      return NextResponse.json({ message: "Логин и пароль обязательны." }, { status: 400 });
    }

    if (!verifyAdminCredentials(body.login, body.password)) {
      return NextResponse.json({ message: "Неверные учётные данные." }, { status: 401 });
    }

    await setAdminSession(body.login);

    return NextResponse.json({ message: "Вход выполнен." });
  } catch {
    return NextResponse.json({ message: "Некорректный JSON." }, { status: 400 });
  }
}
