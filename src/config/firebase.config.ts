// import { getApp, getApps, initializeApp } from "firebase/app";
// import { getFirestore, enableNetwork  } from "firebase/firestore";

// const firebaseConfig = {
//   apiKey: "AIzaSyA28MhaTVs91xujNF_f1tVf9gXvXFQF9uE",
//   authDomain: "unitradehub-21eb3.firebaseapp.com",
//   projectId: "unitradehub-21eb3",
//   storageBucket: "unitradehub-21eb3.firebasestorage.app",
//   messagingSenderId: "289359386674",
//   appId: "1:289359386674:web:ec9fe6ddfe4277740dc42b",
//   measurementId: "G-2JX83TSXQT"
// };

// const app = getApps().length ? getApp() : initializeApp(firebaseConfig);
// const db = getFirestore(app);
// await enableNetwork(db);
// console.log("Firestore is now online");
// console.log("Firebase App Initialized:", getApps().length ? getApp() : initializeApp(firebaseConfig));

// export { db, enableNetwork };
import { getApp, getApps, initializeApp } from "firebase/app";
import { getFirestore, enableNetwork } from "firebase/firestore";

// Firebase configuration
const firebaseConfig = {
  apiKey: import.meta.env.VITE_FIREBASE_API_KEY,
  authDomain: import.meta.env.VITE_FIREBASE_AUTH_DOMAIN,
  projectId: import.meta.env.VITE_FIREBASE_PROJECT_ID,
  storageBucket: import.meta.env.VITE_FIREBASE_STORAGE_BUCKET,
  messagingSenderId: import.meta.env.VITE_FIREBASE_MESSAGING_SENDER_ID,
  appId: import.meta.env.VITE_FIREBASE_APP_ID,
  measurementId: import.meta.env.VITE_FIREBASE_MEASUREMENT_ID,
};

// Initialize Firebase app
const app = getApps().length ? getApp() : initializeApp(firebaseConfig);
const db = getFirestore(app);

// Refactor the code to use an async function for top-level await
async function initializeFirebase() {
  await enableNetwork(db);
}

// Call the async function
initializeFirebase();

export { db, enableNetwork };
