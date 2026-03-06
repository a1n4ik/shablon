import Link from "next/link";
import { Container } from "@/components/layout/container";
import { Button } from "@/shared/ui/button";

export default function NotFound() {
  return (
    <section className="py-20 md:py-28">
      <Container className="max-w-3xl text-center">
        <p className="text-sm font-semibold uppercase tracking-[0.2em] text-primary">404</p>
        <h1 className="mt-4 text-4xl font-semibold tracking-tight md:text-5xl">Страница не найдена</h1>
        <p className="mt-5 text-lg leading-8 text-muted-foreground">
          Возможно, страница была перемещена, удалена или адрес введён с ошибкой. Перейдите на главную или откройте каталог услуг и врачей.
        </p>
        <div className="mt-8 flex flex-col justify-center gap-3 sm:flex-row">
          <Button asChild size="lg">
            <Link href="/">На главную</Link>
          </Button>
          <Button asChild variant="outline" size="lg">
            <Link href="/services">Смотреть услуги</Link>
          </Button>
        </div>
      </Container>
    </section>
  );
}
