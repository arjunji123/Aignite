import './about-us.css';
import aiImage from '../../public/assets/img/download.jpeg'; // Replace with your image path
import FeaturesSlider from './swiper';

const AboutUs = () => {
  return (
    <div className="about-us-container">
<div className="flex justify-center items-center gap-3 mt-10">
  <h4 className="text-5xl sm:text-6xl font-extrabold text-gray-800 uppercase tracking-wide relative">
    Aignite
    <span className="absolute bottom-0 left-0 w-16 h-1 bg-gradient-to-r from-green-400 to-teal-500 "></span>
    </h4>
</div>


      <div className="about-us-content">
      <div className="about-us-image w-full" >
          <img src={aiImage} alt="AI Interview Simulation" />
        </div>
        <div className="about-us-text">
        <h2 className='text-xl font-bold'>What We Do</h2>
        <p>
            Welcome to AIGNITE! We are revolutionizing the way professionals prepare for interviews with AI-driven mock interviews.
          </p>
          <p>
            Our platform allows users to simulate real job interviews, get real-time feedback, and improve their interview performance with AI-powered insights.
          </p>
        </div>

        
      </div>

      <FeaturesSlider/>
      <div className="w-full text-center py-4 md:py-6 text-white text-lg md:text-xl font-semibold shadow-lg duration-300"
         style={{ backgroundColor: '#17cf97' }}>
   <p className="text-sm md:text-lg lg:text-xl">
  Join <span className="font-bold text-white drop-shadow-md">AIGNITE</span> today and step up your interview game!
</p>
    </div>
     
    </div>
  );
}

export default AboutUs;
