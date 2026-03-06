import type {
  Article,
  BreadcrumbItem,
  ClinicInfo,
  Doctor,
  FAQItem,
  Service,
} from "@/types";
import { absoluteUrl } from "@/lib/utils";
import { siteConfig } from "@/config/site";

export function buildBreadcrumbSchema(items: BreadcrumbItem[]) {
  return {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    itemListElement: items.map((item, index) => ({
      "@type": "ListItem",
      position: index + 1,
      name: item.name,
      item: absoluteUrl(item.href),
    })),
  };
}

export function buildFaqSchema(items: FAQItem[]) {
  return {
    "@context": "https://schema.org",
    "@type": "FAQPage",
    mainEntity: items.map((item) => ({
      "@type": "Question",
      name: item.question,
      acceptedAnswer: {
        "@type": "Answer",
        text: item.answer,
      },
    })),
  };
}

export function buildClinicSchema(clinic: ClinicInfo) {
  return {
    "@context": "https://schema.org",
    "@type": "MedicalClinic",
    name: clinic.name,
    legalName: clinic.legalName,
    description: clinic.description,
    url: siteConfig.url,
    telephone: clinic.phone,
    email: clinic.email,
    address: {
      "@type": "PostalAddress",
      addressLocality: clinic.city,
      addressRegion: siteConfig.region,
      streetAddress: clinic.address,
      addressCountry: "RU",
    },
    geo: {
      "@type": "GeoCoordinates",
      latitude: clinic.coordinates.lat,
      longitude: clinic.coordinates.lng,
    },
    medicalSpecialty: clinic.directions,
    openingHours: clinic.openingHours,
    image: [absoluteUrl("/images/clinic-building.svg")],
  };
}

export function buildDoctorSchema(doctor: Doctor, clinic: ClinicInfo) {
  return {
    "@context": "https://schema.org",
    "@type": "Physician",
    name: doctor.name,
    description: doctor.excerpt,
    image: absoluteUrl(doctor.photo),
    medicalSpecialty: doctor.specialization,
    knowsAbout: doctor.areas,
    alumniOf: doctor.education,
    worksFor: {
      "@type": "MedicalClinic",
      name: clinic.name,
      url: siteConfig.url,
    },
    address: {
      "@type": "PostalAddress",
      addressLocality: clinic.city,
      streetAddress: clinic.address,
      addressCountry: "RU",
    },
    telephone: clinic.phone,
  };
}

export function buildServiceSchema(service: Service, clinic: ClinicInfo) {
  return {
    "@context": "https://schema.org",
    "@type": "Service",
    serviceType: service.name,
    name: service.name,
    description: service.description,
    provider: {
      "@type": "MedicalClinic",
      name: clinic.name,
      url: siteConfig.url,
    },
    areaServed: clinic.city,
    offers: {
      "@type": "Offer",
      priceCurrency: "RUB",
      price: service.priceFrom,
      url: absoluteUrl(`/services/${service.slug}`),
    },
  };
}

export function buildArticleSchema(
  article: Article,
  clinic: ClinicInfo,
  authorName?: string,
) {
  return {
    "@context": "https://schema.org",
    "@type": "Article",
    headline: article.title,
    description: article.excerpt,
    datePublished: article.publishedAt,
    dateModified: article.updatedAt ?? article.publishedAt,
    author: authorName
      ? {
          "@type": "Person",
          name: authorName,
        }
      : undefined,
    publisher: {
      "@type": "MedicalClinic",
      name: clinic.name,
      logo: {
        "@type": "ImageObject",
        url: absoluteUrl("/images/logo-mark.svg"),
      },
    },
    image: absoluteUrl(article.cover),
    mainEntityOfPage: absoluteUrl(`/articles/${article.slug}`),
  };
}
