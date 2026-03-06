import Link from "next/link";
import { Search } from "lucide-react";
import { Button } from "@/shared/ui/button";
import { Input } from "@/shared/ui/input";

type ArticleListControlsProps = {
  query?: string;
  category?: string;
  categories: string[];
};

export function ArticleListControls({
  query,
  category,
  categories,
}: ArticleListControlsProps) {
  return (
    <form className="grid gap-3 rounded-[28px] border border-border bg-card p-5 shadow-soft md:grid-cols-[1.1fr_1fr_auto]">
      <div className="relative">
        <Search className="pointer-events-none absolute left-3 top-3.5 h-4 w-4 text-muted-foreground" />
        <Input className="pl-9" name="q" defaultValue={query} placeholder="Поиск по статьям" />
      </div>

      <select
        name="category"
        defaultValue={category ?? "all"}
        className="flex h-11 w-full rounded-2xl border border-input bg-background px-4 py-2 text-sm shadow-sm focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring"
      >
        <option value="all">Все категории</option>
        {categories.map((item) => (
          <option key={item} value={item}>
            {item}
          </option>
        ))}
      </select>

      <div className="flex gap-2">
        <Button type="submit">Применить</Button>
        <Button asChild variant="outline">
          <Link href="/articles">Сбросить</Link>
        </Button>
      </div>
    </form>
  );
}
