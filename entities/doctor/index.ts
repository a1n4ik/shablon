import type { Doctor } from "@/types";

export function filterDoctors(doctors: Doctor[], query: string, specialization?: string) {
  const q = query.trim().toLowerCase();

  return doctors.filter((doctor) => {
    const matchesSpecialization =
      !specialization || specialization === "all" || doctor.specialization === specialization;
    const matchesQuery =
      !q ||
      doctor.name.toLowerCase().includes(q) ||
      doctor.specialization.toLowerCase().includes(q) ||
      doctor.areas.some((item) => item.toLowerCase().includes(q));

    return matchesSpecialization && matchesQuery;
  });
}
