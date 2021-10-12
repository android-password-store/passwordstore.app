<template>
  <div class="section1">
    <Navbar />
    <HelloWorld msg="Android Password Store" />
  </div>
</template>

<script>
import HelloWorld from "@/components/HelloWorld.vue";
import Navbar from "@/components/Navbar.vue";
export default {
  components: {
    HelloWorld,
    Navbar
  }
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
</style>
