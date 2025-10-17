import { createRouter, createWebHashHistory } from "vue-router";
import Main from "../views/main.vue";
import Test from "../views/test.vue";
import Login from "../views/login.vue";

const routes = [
  { path: "/", component: Main, name: "Main" },
  { path: "/test/", component: Test, name: "Test" },
  { path: "/login/", component: Login, name: "Login" },
];

const router = createRouter({
  // Provide the history implementation to use. We
  // are using the hash history for simplicity here.
  history: createWebHashHistory(),
  routes // short for `routes: routes`
});

export default router;
