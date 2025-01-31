import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import path from "path"

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
  build: {
    target: 'es2022'  // Use ES2022 or higher to support top-level await
  },
  server: {
    port: 5173, // or any other port number
    host: '0.0.0.0', // To make it accessible on all network interfaces
    allowedHosts: ['aignite.onrender.com'], // Add your Render hostname here
  },
  define: {
    'process.env': process.env
  },
})
