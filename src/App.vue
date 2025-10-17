<script setup lang="ts">
import { RouterView, useRouter } from "vue-router";
const router = useRouter();
const routes = router.getRoutes();
</script>

<template>
  <header>
    <span>3 Amigos</span>
    <nav>
      <router-link v-for="route in routes" :key="route.path" :to="route.path">
        {{route.name}}
      </router-link>
    </nav>
  </header>
  <main class="container">
    <RouterView />
  </main>
</template>
