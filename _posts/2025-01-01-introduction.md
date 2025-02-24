---
layout: default
title: "Introduction to Vue and Pinia"
---

## Introduction
---
On my first day at Nebero Systems, I learned that the company primarily uses the Vue.js framework for development. To get up to speed, I was assigned the task of learning Vue and Pinia, which took me a week to grasp.

## Overview of Vue.js
---
Vue.js is a progressive JavaScript framework used for building interactive web applications. It follows a component-based architecture, making it highly modular and scalable.

- **Reactivity System**: Vue tracks changes in data and updates the DOM efficiently.
- **Component-Based Architecture**: Applications are built using reusable components.
- **Declarative Rendering**: Uses a templating syntax to render UI elements dynamically.
- **Directives**: Provides built-in functionalities like `v-for` for loops and `v-if` for conditional rendering.

### Example: Basic Vue Component

```vue
<template>
  <div>
    <h1>{{ message }}</h1>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: "Hello, Vue!",
    };
  },
};
</script>
```

## Introduction to Pinia
---

Pinia is the state management library for Vue, replacing Vuex in modern Vue applications. It simplifies state handling with a more intuitive API.

- **Modular and Lightweight:** Each store is independent and can be structured easily.
- **DevTools Integration:** Supports Vue DevTools for debugging.
- **TypeScript Support:** Provides strong typing support for better maintainability.

### Example: Creating a Pinia Store
```pinia
import { defineStore } from 'pinia';

export const useCounterStore = defineStore('counter', {
  state: () => ({
    count: 0
  }),
  actions: {
    increment() {
      this.count++;
    }
  }
});
```