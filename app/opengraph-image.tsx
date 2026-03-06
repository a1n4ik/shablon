import { ImageResponse } from "next/og";
import { siteConfig } from "@/config/site";

export const runtime = "edge";
export const size = {
  width: 1200,
  height: 630,
};
export const contentType = "image/png";

export default function OpenGraphImage() {
  return new ImageResponse(
    (
      <div
        style={{
          width: "100%",
          height: "100%",
          display: "flex",
          flexDirection: "column",
          justifyContent: "space-between",
          padding: "56px",
          background: "linear-gradient(135deg, #ecfeff 0%, #f8fafc 55%, #d1fae5 100%)",
          color: "#0f172a",
          fontFamily: "Inter, sans-serif",
        }}
      >
        <div style={{ display: "flex", alignItems: "center", gap: 16 }}>
          <div
            style={{
              width: 68,
              height: 68,
              borderRadius: 24,
              display: "flex",
              alignItems: "center",
              justifyContent: "center",
              background: "#0f766e",
              color: "white",
              fontSize: 34,
              fontWeight: 700,
            }}
          >
            M
          </div>
          <div style={{ display: "flex", flexDirection: "column" }}>
            <div style={{ fontSize: 30, fontWeight: 700 }}>{siteConfig.name}</div>
            <div style={{ fontSize: 22, color: "#334155" }}>Медицинский центр в {siteConfig.city}</div>
          </div>
        </div>

        <div style={{ display: "flex", flexDirection: "column", gap: 18, maxWidth: 920 }}>
          <div style={{ fontSize: 62, lineHeight: 1.05, fontWeight: 700 }}>
            Врачи, диагностика и удобная запись на приём
          </div>
          <div style={{ fontSize: 28, lineHeight: 1.35, color: "#334155" }}>
            SEO-ориентированный сайт клиники с локальным акцентом, контентными страницами услуг и врачей.
          </div>
        </div>

        <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", fontSize: 24, color: "#334155" }}>
          <div>{siteConfig.phone}</div>
          <div>{siteConfig.address}</div>
        </div>
      </div>
    ),
    size,
  );
}
