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
        title={`Медицинский центр «Персона» в ${clinic.city}: диагностика, лечение и профилактика`}
        paragraphs={[
          `В медицинском центре «Персона» в ${clinic.city} пациенты получают комплексную помощь: консультации профильных специалистов, функциональную диагностику, лабораторные исследования и программы check-up для раннего выявления рисков.`,
          "Мы делаем акцент на поиске причин жалоб, персональном сопровождении и понятных рекомендациях. Такой подход помогает не только эффективно лечить заболевания, но и выстраивать долгосрочную профилактику для сохранения качества жизни.",
        ]}
      />
    </>
  );
}
