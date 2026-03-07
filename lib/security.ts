export function sanitizeString(input: string) {
  return input
    .replace(/<\s*script/gi, "&lt;script")
    .replace(/<\s*\/\s*script\s*>/gi, "&lt;/script&gt;")
    .replace(/javascript:/gi, "")
    .replace(/on\w+\s*=/gi, "")
    .trim();
}

export function sanitizeUnknown<T>(input: T): T {
  if (typeof input === "string") {
    return sanitizeString(input) as T;
  }

  if (Array.isArray(input)) {
    return input.map((item) => sanitizeUnknown(item)) as T;
  }

  if (input && typeof input === "object") {
    const entries = Object.entries(input as Record<string, unknown>).map(([key, value]) => [
      key,
      sanitizeUnknown(value),
    ]);

    return Object.fromEntries(entries) as T;
  }

  return input;
}
