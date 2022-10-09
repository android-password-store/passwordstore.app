<template>
  <div class="section1">
    <Navbar />
    <APSHome msg="Android Password Store" />
  </div>
</template>

<script>
import APSHome from "@/components/Home.vue";
import Navbar from "@/components/Navbar.vue";
export default {
  components: {
    APSHome,
    Navbar,
  },
};
</script>

<style>
#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin: 0 2rem;
}
a {
  color: #3E6AFC;
}

li {
  list-style-type: disc;
}
</style>
