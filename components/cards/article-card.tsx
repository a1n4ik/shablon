import Image from "next/image";
import Link from "next/link";
import type { Article } from "@/types";
import { Card, CardContent } from "@/shared/ui/card";
import { Badge } from "@/shared/ui/badge";
import { formatDate } from "@/lib/utils";

export function ArticleCard({ article }: { article: Article }) {
  return (
    <Card className="overflow-hidden">
      <div className="relative aspect-[16/9] bg-muted">
        <Image
          src={article.cover}
          alt={article.title}
          fill
          className="object-cover"
          sizes="(max-width: 1024px) 100vw, 33vw"
        />
      </div>
      <CardContent className="p-6">
        <div className="mb-3 flex items-center gap-3">
          <Badge>{article.category}</Badge>
          <span className="text-xs text-muted-foreground">{formatDate(article.publishedAt)}</span>
        </div>
        <h3 className="text-xl font-semibold leading-tight">
          <Link href={`/articles/${article.slug}`} className="hover:text-primary">
            {article.title}
          </Link>
        </h3>
        <p className="mt-3 text-sm leading-6 text-muted-foreground">{article.excerpt}</p>
      </CardContent>
    </Card>
  );
}
