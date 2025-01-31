import { Toaster } from "@/components/ui/sooner";

export const ToasterProvider = () => {
  return (
    <Toaster
      theme="light"
      richColors
      position="top-right"
      className="bg-neutral-100 shadow-lg"
    />
  );
};