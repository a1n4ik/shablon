import { contentApi } from "@/lib/content-api";
import { buildClinicSchema, buildFaqSchema } from "@/lib/schema";
import { SchemaScript } from "@/components/seo/schema-script";
import { HeroSection } from "@/components/sections/hero-section";
import { AdvantagesSection } from "@/components/sections/advantages-section";
import { ServicesSection } from "@/components/sections/services-section";
import { DoctorsSection } from "@/components/sections/doctors-section";
import { ReviewsSection } from "@/components/sections/reviews-section";
import { FaqSection } from "@/components/sections/faq-section";
import { ContactSection } from "@/components/sections/contact-section";
import { SeoTextSection } from "@/components/sections/seo-text-section";
import { CtaStrip } from "@/components/common/cta-strip";

export const revalidate = 3600;

export default function HomePage() {
  const clinic = contentApi.getClinicInfo();
  const contact = contentApi.getContactInfo();
  const services = contentApi.getServices().slice(0, 6);
  const doctors = contentApi.getDoctors().slice(0, 3);
  const reviews = contentApi.getReviews();
  const faqs = contentApi.getFaqs();

  return (
    <>
      <SchemaScript schema={buildClinicSchema(clinic)} />
      <SchemaScript schema={buildFaqSchema(faqs)} />
      <HeroSection city={clinic.city} />
      <AdvantagesSection />
      <ServicesSection services={services} />
      <DoctorsSection doctors={doctors} />
      <ReviewsSection reviews={reviews} />
      <CtaStrip
        title="Нужен врач, УЗИ или чек-ап?"
        description="Оставьте заявку, и администратор клиники подберёт направление, врача и удобное окно для визита."
        page="home-cta"
      />
      <FaqSection items={faqs} />
      <ContactSection contact={contact} />
      <SeoTextSection
        title={`Частная клиника в ${clinic.city} с сильной SEO-архитектурой и удобной записью`}
        paragraphs={[
          `Главная страница сайта медицинского центра в ${clinic.city} должна одновременно решать задачи пользователя и поисковой системы. Поэтому в структуру уже включены коммерческие блоки, доверительные факторы, FAQ, контакты, карта, локальные сигналы и форма записи на приём.`,
          "Такой подход помогает продвигать сайт как по общим коммерческим запросам, так и по локальным кластерам: консультации врачей, УЗИ, анализы, чек-апы и смежные направления. При этом архитектура остаётся масштабируемой: можно добавлять новые услуги, врачей, статьи и региональные посадочные страницы без пересборки всего проекта.",
        ]}
      />
    </>
  );
}
