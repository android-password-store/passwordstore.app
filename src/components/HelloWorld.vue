<template>
  <div class="hello">
    <img
    alt="Vue logo"
    style="width: 200px; height: 200px;"
    src="@/assets/FG.png"
  />
    <h1>{{ msg }}</h1>
    <p>
      Android client for pass. Password Store aims to be a feature-complete client and implements most of its capabilities.
    </p>
  </div>
</template>

<script>
export default {
  name: "HelloWorld",
  props: {
    msg: String
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.hello {
  margin: 2rem 0;
}
</style>
