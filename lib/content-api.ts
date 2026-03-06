import { articles } from "@/content/articles";
import { clinicInfo, contactInfo } from "@/content/clinic";
import { doctors } from "@/content/doctors";
import { generalFaqs } from "@/content/faqs";
import { priceCategories } from "@/content/prices";
import { reviews } from "@/content/reviews";
import { serviceCategories, services } from "@/content/services";

export const revalidateSeconds = 60 * 60;

export const contentApi = {
  getClinicInfo: () => clinicInfo,
  getContactInfo: () => contactInfo,
  getServices: () => services,
  getServiceCategories: () => serviceCategories,
  getServiceBySlug: (slug: string) => services.find((item) => item.slug === slug),
  getDoctors: () => doctors,
  getDoctorBySlug: (slug: string) => doctors.find((item) => item.slug === slug),
  getArticles: () => articles,
  getArticleBySlug: (slug: string) => articles.find((item) => item.slug === slug),
  getFaqs: () => generalFaqs,
  getReviews: () => reviews,
  getPriceCategories: () => priceCategories,
};

export type ContentApi = typeof contentApi;
