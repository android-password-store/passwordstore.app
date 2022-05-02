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
      <div class="buttonWrapper">
        <a
          href="https://docs.passwordstore.app/"
          target="_blank"
          rel="noopener noreferrer"
          ><img
            alt="Password Store docs"
            height="30px"
            src="https://img.shields.io/static/v1?label=docs&message=passwordstore.app&color=003e5b&logoColor=003e5b&style=for-the-badge"
        /></a>
        <a
          href="https://github.com/android-password-store/Android-Password-Store/stargazers"
          target="_blank"
          rel="noopener noreferrer"
          ><img
            alt="GitHub Stars"
            height="30px"
            src="https://img.shields.io/github/stars/android-password-store/Android-Password-Store?color=003e5b&logoColor=003e5b&style=for-the-badge"
        /></a>
        <a
          href="https://opencollective.com/Android-Password-Store"
          target="_blank"
          rel="noopener noreferrer"
        >
          <img
            alt="Open Collective backers"
            height="30px"
            src="https://img.shields.io/opencollective/backers/android-password-store?color=003e5b&style=for-the-badge"
          />
        </a>
      </div>
    </div>
    <img class="mockup" alt="aps mockup" src="@/assets/Screen.png" />
  </section>
</template>

<script>
export default {
  name: "Home",
  props: {
    msg: String,
  },
};
</script>

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
  min-width: 142px;
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
.buttonWrapper {
  margin-top: 2rem;
  display: flex;
  flex-direction: row;
  justify-content: center;
  gap: 2rem;
}
@media (max-width: 767px) {
  .main {
    display: flex;
    flex-direction: column;
    flex-flow: column-reverse;
  }
  .mockup {
    width: 100px;
    height: 210px;
  }
  .title {
    font-size: 3rem;
  }
  .buttonWrapper {
    margin-top: 1rem;
    flex-direction: column;
    gap: 0.2rem;
  }
}
</style>
