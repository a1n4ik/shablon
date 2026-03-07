"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export default function AdminLoginPage() {
  const router = useRouter();
  const [login, setLogin] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  const onSubmit = async (event: React.FormEvent) => {
    event.preventDefault();
    setLoading(true);
    setError("");

    const response = await fetch("/api/admin/login", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ login, password }),
    });

    const data = await response.json();

    if (!response.ok) {
      setError(data.message ?? "Ошибка авторизации");
      setLoading(false);
      return;
    }

    router.push("/admin");
    router.refresh();
  };

  return (
    <section className="container py-16 max-w-lg">
      <h1 className="text-3xl font-bold mb-6">Вход в админ-панель</h1>
      <form className="space-y-4" onSubmit={onSubmit}>
        <input
          value={login}
          onChange={(event) => setLogin(event.target.value)}
          placeholder="Логин"
          className="w-full rounded-md border p-3"
          autoComplete="username"
          required
        />
        <input
          value={password}
          onChange={(event) => setPassword(event.target.value)}
          placeholder="Пароль"
          type="password"
          className="w-full rounded-md border p-3"
          autoComplete="current-password"
          required
        />
        <button className="rounded-md bg-sky-700 px-4 py-2 text-white" disabled={loading} type="submit">
          {loading ? "Входим..." : "Войти"}
        </button>
      </form>
      {error ? <p className="text-red-600 mt-4">{error}</p> : null}
      <p className="text-sm text-muted-foreground mt-6">
        Для входа используйте переменные окружения ADMIN_LOGIN и ADMIN_PASSWORD.
      </p>
    </section>
  );
}
