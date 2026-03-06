export type SeoFields = {
  title: string;
  description: string;
  canonicalPath?: string;
  keywords?: string[];
  image?: string;
  noindex?: boolean;
};

export type BreadcrumbItem = {
  name: string;
  href: string;
};

export type FAQItem = {
  question: string;
  answer: string;
};

export type Review = {
  author: string;
  rating: number;
  text: string;
  date: string;
  serviceSlug?: string;
  doctorSlug?: string;
};

export type LicenseDocument = {
  title: string;
  number: string;
  issuedAt: string;
  fileUrl: string;
};

export type Coordinates = {
  lat: number;
  lng: number;
};

export type ContactInfo = {
  city: string;
  address: string;
  phone: string;
  email: string;
  whatsapp: string;
  telegram: string;
  parking: string;
  directions: string[];
  workingHours: string[];
  coordinates: Coordinates;
};

export type ServiceCategory = {
  slug: string;
  name: string;
  description: string;
};

export type Service = {
  slug: string;
  name: string;
  categorySlug: string;
  shortDescription: string;
  description: string;
  symptoms: string[];
  procedureSteps: string[];
  indications: string[];
  contraindications: string[];
  advantages: string[];
  priceFrom: number;
  doctorSlugs: string[];
  faq: FAQItem[];
  relatedArticleSlugs: string[];
  seo: SeoFields;
};

export type Doctor = {
  slug: string;
  name: string;
  specialization: string;
  experienceYears: number;
  photo: string;
  excerpt: string;
  education: string[];
  certificates: string[];
  areas: string[];
  serviceSlugs: string[];
  scheduleNote: string;
  reviews: Review[];
  faq: FAQItem[];
  seo: SeoFields;
};

export type ArticleSection = {
  id: string;
  title: string;
  paragraphs: string[];
};

export type Article = {
  slug: string;
  title: string;
  excerpt: string;
  category: string;
  cover: string;
  publishedAt: string;
  updatedAt?: string;
  authorDoctorSlug?: string;
  relatedServiceSlugs: string[];
  relatedDoctorSlugs: string[];
  sections: ArticleSection[];
  seo: SeoFields;
};

export type PriceItem = {
  name: string;
  slug: string;
  price: number | string;
  note?: string;
  serviceSlug?: string;
};

export type PriceCategory = {
  slug: string;
  title: string;
  description: string;
  items: PriceItem[];
  seo?: SeoFields;
};

export type ClinicInfo = {
  name: string;
  legalName: string;
  tagline: string;
  description: string;
  city: string;
  phone: string;
  email: string;
  address: string;
  coordinates: Coordinates;
  openingHours: string[];
  yearsInMarket: number;
  licenses: LicenseDocument[];
  advantages: string[];
  directions: string[];
  socialProof: {
    patientsPerMonth: string;
    nps: string;
    rating: string;
  };
  seo: SeoFields;
};

export type LeadFormPayload = {
  name: string;
  phone: string;
  preferredDate?: string;
  message?: string;
  serviceSlug?: string;
  doctorSlug?: string;
  page?: string;
  formType: "appointment" | "callback" | "question";
  consent: boolean;
  website?: string;
  startedAt?: number;
};
