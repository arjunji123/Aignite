import { Swiper, SwiperSlide } from "swiper/react";
import 'swiper/swiper-bundle.css';  // This imports both the general Swiper and the pagination styles
import { Navigation,Pagination } from "swiper/modules";
import "./about-us.css"; // Make sure you have this file

const FeaturesSlider = () => {
  const features = [
    {
      img: "/assets/img/first.jpeg", 
      title: "Realistic Interviews",
      desc: "Simulate real-life interview scenarios with job-specific questions and tech stacks.",
    },
    {
      img: "/assets/img/second.jpeg", 
      title: "Instant AI Feedback",
      desc: "Receive instant, personalized feedback based on your responses, scored out of 10.",
    },
    {
      img: "/assets/img/third.jpeg", 
      title: "Live Interview Mode",
      desc: "Answer questions using your webcam and microphone, making the experience as real as possible.",
    },
  ];

  return (
    <div className="features-container bg-white py-10">
      <h3 className="text-center text-3xl font-bold text-gray-800 mb-8">Our Key Features</h3>
      <Swiper
        modules={[Navigation, Pagination]}
        spaceBetween={30}
        slidesPerView={1}
        navigation
        pagination={{ clickable: true }}
        breakpoints={{
          768: { slidesPerView: 2 },
          1024: { slidesPerView: 3 },
        }}
        className="w-full max-w-6xl mx-auto"
      >
        {features.map((feature, index) => (
          <SwiperSlide key={index} className="p-6">
            <div className="feature-card bg-gray-50 shadow-lg rounded-2xl overflow-hidden text-center p-6 transition-transform transform hover:scale-105">
              <img
                src={feature.img}
                alt={feature.title}
                className="w-full h-48 object-cover rounded-lg mb-4"
              />
              <h4 className="text-xl font-semibold text-gray-900">{feature.title}</h4>
              <p className="text-gray-600 mt-2">{feature.desc}</p>
            </div>
          </SwiperSlide>
        ))}
      </Swiper>
    </div>
  );
};

export default FeaturesSlider;
