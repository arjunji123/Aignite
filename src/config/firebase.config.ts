import { getApp, getApps, initializeApp } from "firebase/app";
import { getFirestore, enableNetwork  } from "firebase/firestore";

const firebaseConfig = {
  apiKey: "AIzaSyA28MhaTVs91xujNF_f1tVf9gXvXFQF9uE",
  authDomain: "unitradehub-21eb3.firebaseapp.com",
  projectId: "unitradehub-21eb3",
  storageBucket: "unitradehub-21eb3.firebasestorage.app",
  messagingSenderId: "289359386674",
  appId: "1:289359386674:web:ec9fe6ddfe4277740dc42b",
  measurementId: "G-2JX83TSXQT"
};

const app = getApps().length ? getApp() : initializeApp(firebaseConfig);
const db = getFirestore(app);
await enableNetwork(db);
console.log("Firestore is now online");
console.log("Firebase App Initialized:", getApps().length ? getApp() : initializeApp(firebaseConfig));

export { db, enableNetwork };
