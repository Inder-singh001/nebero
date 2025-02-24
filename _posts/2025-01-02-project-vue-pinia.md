---
layout: default
title: "Vue & Pinia Practice Project"
---

## Practice Project

I developed this project to dive deep into **Vue.js**, **Pinia**, and **Express.js**, while also practicing API integration and state management. The repository is available here: [nebero-vue](https://github.com/Inder-singh001/nebero-vue).

## Technologies Used

- **Vue.js** - Frontend framework
- **Pinia** - State management
- **Express.js** - Backend API
- **Postman** - API testing
- **Vuelidate** - Form validation
- **Vue Router** - Routing

## Project Setup & Installation

I explored different ways to set up a Vue project:

- Using Vue’s recommended method:

  ```sh
  npm create vue@latest my-project
  cd my-project
  npm install
  npm run dev
  ```

- With Vue CLI:

  ```sh
  npm install -g @vue/cli
  vue create my-project
  cd my-project
  npm run serve
  ```

- Using Vue via CDN:

  ```html
  <script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
  ```

## Features & Implementations

The project consists of multiple **mini-projects**, each focusing on a different Vue concept:

### 1. To-Do Task Manager

- Built a simple to-do app with **add, delete, and update** features.
- Used **Pinia** for state management.

### 2. Calculator

- Implemented a **reactive state** to handle dynamic calculations.
- Used Vue’s event handling for real-time input processing.

### 3. Notes App

- Created an app to **add and delete notes** dynamically.
- Implemented **computed properties** for efficient filtering and searching.

### 4. User Management System

- Designed a **user form** with **Vuelidate** for input validation.
- Displayed user data fetched from a **Pinia store**.
- Implemented **Vue Router** for component-based navigation.

### 5. Express.js API Integration

- Developed RESTful APIs for CRUD operations:
  - **POST** - Create new users or tasks.
  - **PUT** - Update records.
  - **DELETE** - Remove records.
  - **GET** - Fetch data.
- Tested API endpoints using **Postman**.

## Core Vue Concepts Applied

- **Reactive State** - Used `ref` and `reactive` for managing component state.
- **Computed Properties** - Implemented to optimize performance and handle derived state.
- **Vue Directives** - Used `v-if`, `v-for`, `v-model`, and `v-bind` for dynamic rendering.
- **Lifecycle Hooks** - Applied `onMounted()` and `onUpdated()` for state initialization and updates.
- **Props & Events** - Created reusable components with prop-based data passing and event emission.

This project allowed me to practice real-world Vue development while integrating **state management**, **backend API handling**, and **form validation** effectively.
