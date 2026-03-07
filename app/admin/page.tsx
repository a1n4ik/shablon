"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";

type SaveState = "idle" | "saving" | "success" | "error";

export default function AdminPage() {
  const router = useRouter();
  const [jsonText, setJsonText] = useState("{}");
  const [saveState, setSaveState] = useState<SaveState>("idle");
  const [message, setMessage] = useState("");

  useEffect(() => {
    fetch("/api/admin/content")
      .then(async (response) => {
        if (response.status === 401) {
          router.push("/admin/login");
          return;
        }

        const data = await response.json();
        setJsonText(JSON.stringify(data, null, 2));
      })
      .catch(() => {
        setMessage("Не удалось загрузить данные из API.");
        setSaveState("error");
      });
  }, [router]);

  const save = async () => {
    setSaveState("saving");
    setMessage("");

    try {
      JSON.parse(jsonText);
    } catch {
      setSaveState("error");
      setMessage("JSON содержит ошибку. Исправьте формат перед сохранением.");
      return;
    }

    const response = await fetch("/api/admin/content", {
      method: "PUT",
      headers: { "Content-Type": "application/json" },
      body: jsonText,
    });

    const result = await response.json();

    if (!response.ok) {
      setSaveState("error");
      setMessage(result.message ?? "Ошибка при сохранении.");
      return;
    }

    setSaveState("success");
    setMessage(result.message ?? "Сохранено");
  };

  const logout = async () => {
    await fetch("/api/admin/logout", { method: "POST" });
    router.push("/admin/login");
    router.refresh();
  };

  return (
    <section className="container py-10 space-y-4">
      <div className="flex items-center justify-between gap-4">
        <h1 className="text-3xl font-bold">Админ-панель контента</h1>
        <button type="button" onClick={logout} className="rounded-md border px-4 py-2">
          Выйти
        </button>
      </div>
      <p className="text-muted-foreground max-w-3xl">
        Редактируйте JSON-объект с контентом и SEO-данными сайта. Можно переопределять любые блоки:
        clinicInfo, contactInfo, services, doctors, articles, faqs, reviews, priceCategories.
      </p>

      <textarea
        className="w-full min-h-[560px] rounded-lg border p-3 font-mono text-sm"
        value={jsonText}
        onChange={(event) => setJsonText(event.target.value)}
      />

      <div className="flex items-center gap-3">
        <button
          type="button"
          onClick={save}
          disabled={saveState === "saving"}
          className="rounded-md bg-sky-700 px-4 py-2 text-white disabled:opacity-70"
        >
          {saveState === "saving" ? "Сохранение..." : "Сохранить изменения"}
        </button>
        <span className="text-sm text-muted-foreground">После сохранения обновите страницу сайта.</span>
      </div>

      {message ? (
        <p className={saveState === "error" ? "text-red-600" : "text-emerald-600"}>{message}</p>
      ) : null}
    </section>
  );
}
