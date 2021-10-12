<template>
  <section class="main">
    <div class="wrapper">
      <div class="about">
        <h1 class="title">{{ msg }}</h1>
        <p class="description">
          Android client for pass. Password Store aims to be a feature-complete
          client and implements most of its capabilities.
        </p>
      </div>
      <div class="badgeWrapper">
        <a href="https://github.com/android-password-store/Android-Password-Store/stars"><img alt="GitHub Stars" src="https://img.shields.io/github/stars/android-password-store/Android-Password-Store?color=003e5b&logoColor=003e5b&style=for-the-badge"></a>
        <a href="https://opencollective.com/Android-Password-Store">
          <img alt="Open Collective backers" src="https://img.shields.io/opencollective/backers/android-password-store?color=003e5b&style=for-the-badge">
        </a>
      </div>
    </div>
    <img class="mockup" alt="aps mockup" src="@/assets/Screen.png" />
  </section>
</template>

<script>
export default {
  name: "HelloWorld",
  props: {
    msg: String,
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.main {
  margin: 8rem 0;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  gap: 4rem;
}

.mockup {
  height: 300px;
  border-radius: 12px;
  border: 4px solid rgb(87, 84, 84);
  box-shadow: 10px -4px 80px 20px rgba(67, 67, 67, 0.14);
}

.wrapper {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: center;
}

.about {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: flex-start;
}
.title {
  font-size: 4rem;
  text-align: start;
}
.description {
  font-size: 2rem;
  text-align: start;

}
.badgeWrapper {
  margin-top: 2rem;
  display: flex;
  flex-direction: row;
  gap: 2rem;
}
@media (max-width: 767px) {
  .main {
  display: flex;
  flex-direction: column;
  flex-flow: column-reverse;
  }
  .mockup {
    width: 100px; /* width of container */
    height: 210px; /* height of container */
  }
  .title {
    font-size: 3rem;
  }
}
</style>
