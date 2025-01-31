import { Link } from "react-router-dom"

const LogoContainer = () => {
  return (
<Link to={"/"} className="flex items-center gap-3">
  <img 
    src="/assets/svg/logo.svg" 
    alt="Logo" 
    className="min-w-10 min-h-10 object-contain" 
    style={{ width: 'auto', height: 'auto' }} 
  />
  <h4 className="text-xl font-bold text-gray-800 uppercase tracking-wider">
    Aignite
    <span className="block border-b-4 w-5" style={{ borderColor: '#17cf97' }}></span>
  </h4>
</Link>


    
  )
}

export default LogoContainer