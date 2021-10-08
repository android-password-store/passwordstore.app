<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <a href="https://play.google.com/store/apps/details?id=dev.msfjarvis.aps">
      <img src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" 
          alt="Get it on Google Play"
          height="80" />
    </a>
    <a href="https://f-droid.org/packages/dev.msfjarvis.aps">
      <img src="https://fdroid.gitlab.io/artwork/badge/get-it-on.png"
          alt="Get it on F-Droid"
          height="80" />
    </a>
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
h3 {
  margin: 40px 0 0;
}
</style>
