import './contactus.css';
import { useState, useEffect } from 'react';

// Extending Window interface to include `Email`
declare global {
  interface Window {
    Email: any; // or a more specific type, depending on what `Email` is
  }
}

const ContactUs = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    message: ''
  });

  useEffect(() => {
    const script = document.createElement("script");
    script.src = "https://smtpjs.com/v3/smtp.js";
    script.async = true;
    document.body.appendChild(script);

    script.onload = () => console.log("SMTP.js Loaded");
    script.onerror = () => console.error("Failed to load SMTP.js");

    return () => {
      document.body.removeChild(script);
    };
  }, []);

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();

    if (!window.Email) {
      alert("SMTP.js not loaded. Please try again.");
      return;
    }

    // SMTP.js Email Send Function
    window.Email.send({
      SecureToken: "6daa3532-c612-4e36-b62c-0013f5413a00", // SMTP.js secure token
      To: "singhnarukaarjun@gmail.com", // Email to send
      From: formData.email, // Sender email
      Subject: "New Contact Form Submission",
      Body: `
        <h2>New Message from Contact Form</h2>
        <p><b>Name:</b> ${formData.name}</p>
        <p><b>Email:</b> ${formData.email}</p>
        <p><b>Message:</b> ${formData.message}</p>
      `,
    }).then((message: string) => alert("Message sent successfully!"));
  };

  return (
    <>
      <div className="flex justify-center items-center gap-3 mt-10 mb-10">
        <h4 className="text-5xl sm:text-4xl font-extrabold text-gray-800 uppercase tracking-wide relative">
          Contact Us
          <span className="absolute bottom-0 left-0 w-14 h-1 bg-gradient-to-r from-green-400 to-teal-500 mt-3"></span>
        </h4>
      </div>

      <div className="contact-us-container p-8 rounded-lg shadow-lg max-w-5xl mx-auto my-12 flex items-center gap-5" style={{ backgroundImage: 'url(/assets/img/bg.jpg)', backgroundSize: 'cover', backgroundPosition: 'center' }}>
        {/* Left Side: Image and Text */}
        <div className="contact-left w-full md:w-1/2 pr-8 space-y-6 text-center md:text-left relative">
          <div className="overlay absolute inset-0 bg-black bg-opacity-40 rounded-lg"></div>
          {/* Background overlay to ensure text visibility */}

          <div className="flex justify-center items-center mb-6">
            <img
              src="/assets/img/first.jpeg"
              alt="Contact Us"
              className="w-full h-full rounded-sm object-cover mt-5 ml-8"
            />
          </div>
          <div className="relative z-10 space-y-6 px-4 ">
            <p className="text-3xl font-semibold text-white mb-4 leading-tight tracking-wide">
              Have any questions? We'd love to hear from you!
            </p>
            <p className="text-lg text-white leading-relaxed tracking-wide">
              If you're looking for collaboration in{' '}
              <strong className="text-gradient">development</strong>,{' '}
              <strong className="text-gradient">design</strong>, or want to integrate{' '}
              <strong className="text-gradient">advanced AI functionalities</strong> into
              <strong className="text-gradient"> AIGNITE </strong>, feel free to reach out. Just fill out the form, and we'll get
              back to you as soon as possible!
            </p>
          </div>
        </div>

        {/* Right Side: Form */}
        <div className="w-full md:w-1/2 mt-5 md:mt-0 bg-opacity-80 backdrop-blur-md p-6 rounded-lg shadow-xl space-y-6">
          <form onSubmit={handleSubmit} className="space-y-6">
            <div className="form-group">
              <label htmlFor="name" className="block text-lg font-semibold text-white mb-2">Name</label>
              <input
                type="text"
                id="name"
                name="name"
                value={formData.name}
                onChange={handleChange}
                required
                className="w-full p-4 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 bg-white bg-opacity-90 placeholder-gray-500 text-gray-800 transition duration-300"
                placeholder="Enter your name"
              />
            </div>

            <div className="form-group">
              <label htmlFor="email" className="block text-lg font-semibold text-white mb-2">Email</label>
              <input
                type="email"
                id="email"
                name="email"
                value={formData.email}
                onChange={handleChange}
                required
                className="w-full p-4 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 bg-white bg-opacity-90 placeholder-gray-500 text-gray-800 transition duration-300"
                placeholder="Enter your email"
              />
            </div>

            <div className="form-group">
              <label htmlFor="message" className="block text-lg font-semibold text-white mb-2">Message</label>
              <textarea
                id="message"
                name="message"
                value={formData.message}
                onChange={handleChange}
                required
                className="w-full p-4 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 bg-white bg-opacity-90 placeholder-gray-500 text-gray-800 transition duration-300"
                placeholder="Your message here"
              ></textarea>
            </div>

            <button
              type="submit"
              className="w-full py-3 bg-gradient-to-r from-purple-500 via-blue-500 to-teal-500 text-white font-semibold rounded-lg shadow-xl hover:from-blue-600 hover:to-teal-600 focus:outline-none focus:ring-4 focus:ring-purple-300 transition duration-500 transform hover:scale-10 hover:shadow-2xl"
            >
              Submit
            </button>
          </form>
        </div>
      </div>
    </>
  );
}

export default ContactUs;
