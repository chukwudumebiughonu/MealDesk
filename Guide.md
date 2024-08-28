Enterprise level food ordering platform    
Features 
User Auth/Registration/Profiles
Search/Sort/Filter/Pagination
Manage Resturarant & Image Upload
Manage Cart & Stripe Checkout
Live Order Status

Tech Stack 
React, Node, MongoDB, TypeScript
Shadcn, Tailwind, React Hook Form
GitHub, Autho0, Stripe, Cloudinary, and Render

# Setting up  backend
Create a node module for the backend with : npm init -y 

install the backend package with: npm i express cors dotenv mongodb mongoose

install the backend typescript package with: npm i ts-node typescript nodemon @types/express @types/cors @types/node --save-dev

initialize typescript compiler with: npx tsc --init in the backend 

create the src file for the backend: src/intex.ts


# Setting up the frontend 

Create a React project using Vite with: npm create vite@latest

Cd into the frontend and run the command: npm install

Add tailwind and its configuration with: npm install -D tailwindcss postcss autoprefixer 

Initialize tailwind with: npx tailwindcss init -p

Edit the tsconfig.json file in the frontend with:   "baseUrl": ".",
    "paths": {
      "@/*": [
        "./src/*"
      ]
    }

Update the vite.config.ts with 
import path from "path"
import react from "@vitejs/plugin-react"
import { defineConfig } from "vite"

export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
})

To import "path" without error run this command: npm i -D @types/node


Initialize the shadcn-ui with: npx shadcn-ui@latest init

how to add components to the frontend: npx shadcn-ui@latest add button


# Seting up Database
Create a new database on mongodb.com 

Add the connection string of the database to the .env file of the backend

Connect to the mongoose in the index.ts of the backend

# React Router setup
In the frontend install react-router-dom with : npm i react-router-dom

Import the react-router-dom into the main.tsx of the frontend src with: import { BrowserRouter as Router } from 'react-router-dom' 

Create a container that would contain all the routes in the sr as AppRoutes.tsx file

Import the created AppRoutes into the main.tsx of the frontend src.

# Layout and Headder
44:25s
Delete the app.tsx, app.css and index.css

Change the index.css in the main.tsx to global.css

Create a layouts folder in the src of the frontend

# Mobile Navigation setup
57:27
Add sheet with: npx shadcn-ui@latest add sheet to the frontend

Add Lucid react for icons with: npm i lucide-react
Add separator component with: npx shadcn-ui@latest add separator

Create a MobileNavbar file with: MobileNav.tsx

Create an account with Auth0 which is an enterprise authentication system. It handles login, registration, sign in password reset

install authO react with: npm i @auth0/auth0-react

Create an auth folder and an authprovider file

Install drowpdown-menu with: npx shadcn-ui@latest add drowpdown-menu

install react create to handle api requests by managing the state: npm i react-query

Install the back end sdk with: npm i express-oauth2-jwt-bearer in the backend

Install the jsonwebtoken with: npm i jsonwebtoken and also npm i @types/jsonwebtoken --save-dev

Install express validator in the backend to handle validations with: npm i express-validator