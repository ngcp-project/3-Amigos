<script setup lang="ts">
import { ref } from "vue";
import { invoke } from "@tauri-apps/api/core";

const userMsg = ref("");
const passMsg = ref("");

const username = ref("");
const password = ref("");

async function login() {
  userMsg.value = "Username: " + username.value;
  passMsg.value = "Password: " + password.value;
}
</script>

<template>
  <h1>Sign In</h1>

  <form class="row" @submit.prevent="login">
    <div>
      <label for="login-username">Username</label>
      <input type="text" id="login-username" v-model="username" />
    </div>

    <div>
      <label for="login-password">Password</label>
      <input type="password" id="login-password" v-model="password" />
    </div>

    <button type="submit">Sign In</button>
  </form>

  <p>{{ userMsg }}</p>
  <p>{{ passMsg }}</p>
</template>


<style scoped>
form, input, label {
  display:block;
}

input {
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 16px;
}
</style>
