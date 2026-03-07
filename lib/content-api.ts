import { articles } from "@/content/articles";
import { clinicInfo, contactInfo } from "@/content/clinic";
import { doctors } from "@/content/doctors";
import { generalFaqs } from "@/content/faqs";
import { priceCategories } from "@/content/prices";
import { reviews } from "@/content/reviews";
import { serviceCategories, services } from "@/content/services";
import { getCmsOverrides } from "@/lib/cms-overrides";

export const revalidateSeconds = 60 * 60;

export const contentApi = {
  getClinicInfo: () => getCmsOverrides().clinicInfo ?? clinicInfo,
  getContactInfo: () => getCmsOverrides().contactInfo ?? contactInfo,
  getServices: () => getCmsOverrides().services ?? services,
  getServiceCategories: () => getCmsOverrides().serviceCategories ?? serviceCategories,
  getServiceBySlug: (slug: string) => (getCmsOverrides().services ?? services).find((item) => item.slug === slug),
  getDoctors: () => getCmsOverrides().doctors ?? doctors,
  getDoctorBySlug: (slug: string) => (getCmsOverrides().doctors ?? doctors).find((item) => item.slug === slug),
  getArticles: () => getCmsOverrides().articles ?? articles,
  getArticleBySlug: (slug: string) => (getCmsOverrides().articles ?? articles).find((item) => item.slug === slug),
  getFaqs: () => getCmsOverrides().faqs ?? generalFaqs,
  getReviews: () => getCmsOverrides().reviews ?? reviews,
  getPriceCategories: () => getCmsOverrides().priceCategories ?? priceCategories,
};

export type ContentApi = typeof contentApi;
