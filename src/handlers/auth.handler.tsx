import LoaderPage from "@/routes/loader-page";
import { useUser, useAuth } from "@clerk/clerk-react";
import { doc, getDoc,setDoc, serverTimestamp } from "@firebase/firestore";
import { useEffect, useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { db } from "@/config/firebase.config";
 import { User } from "../types";
const AuthHandler = () => {
    const {isSignedIn} = useAuth();
    const {user} = useUser();

    const pathname = useLocation().pathname;
    const navigate = useNavigate();

    const [loading, setLoading] = useState(false);

    useEffect(() => {
    const storeUserData = async() =>{
         if(isSignedIn && user){
        setLoading(true);
        try{
const userSnap = await getDoc(doc(db, "users", user.id));
if(!userSnap.exists()){
    const userData : User = {
    id: user.id,
    name: user.fullName || user.firstName || "Anonymous",
    email : user.primaryEmailAddress?.emailAddress || "N/A",
    imageURL : user.imageUrl,
    createdAt: serverTimestamp(),
    updatedAt: serverTimestamp(),
    }

    await setDoc(doc(db, "users", user.id), userData);
        } }
        catch(error){
console.log("Error on storing the user data", error);
        }finally{
            setLoading(false);
        }
    }} 
    storeUserData()
},[isSignedIn, user, pathname, navigate]);

    if(loading) {
        return <LoaderPage/>;
        }
            return null;
}

export default AuthHandler;