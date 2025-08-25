<template>
  <section class="main">
    <div class="wrapper">
      <div class="about">
        <h1 class="title">{{ msg }}</h1>
        <p class="description">
          <strong>⚠️ This project is no longer active.</strong>
          <br /><br />
          Password Store aimed to be a feature-complete client for <a href="https://passwordstore.org/">pass</a> and implemented most of its capabilities.
          <br /><br />
          <strong>Alternative:</strong> You may want to consider the community fork at <a href="https://github.com/agrahn/Android-Password-Store" target="_blank" rel="noopener noreferrer">https://github.com/agrahn/Android-Password-Store</a>. Please note that this project does not endorse this fork or make any promises about its quality, security, or maintenance.
        </p>
      </div>
      <div class="badgeWrapper">
        <a href="https://docs.passwordstore.app/" target="_blank" rel="noopener noreferrer"><img alt="Password Store docs"
            height="30px"
            src="https://img.shields.io/static/v1?label=docs&message=passwordstore.app&color=003e5b&logoColor=003e5b&style=for-the-badge" /></a>
        <a href="https://github.com/android-password-store/Android-Password-Store/stars" target="_blank"
          rel="noopener noreferrer"><img alt="GitHub Stars"
            src="https://img.shields.io/github/stars/android-password-store/Android-Password-Store?color=003e5b&logoColor=003e5b&style=for-the-badge"></a>
        <a href="https://opencollective.com/Android-Password-Store" target="_blank" rel="noopener noreferrer">
          <img alt="Open Collective backers"
            src="https://img.shields.io/opencollective/backers/android-password-store?color=003e5b&style=for-the-badge">
        </a>
      </div>
    </div>
    <img class="mockup" alt="aps mockup" src="@/assets/Screen.png" />
  </section>
   
  <section class="main">
    <div class="wrapper">
      <div class="about">
        <h1 class="subtitle">Project Status</h1>
        <p class="description">
          This project is no longer actively maintained. The original repositories, documentation, and community resources remain available for historical reference:
          <br /><br />
          <a href="https://github.com/android-password-store/Android-Password-Store/issues">Github issues</a>: Historical bug reports and feature requests.
          <br /><br />
          <a href="https://github.com/android-password-store/Android-Password-Store/discussions">GitHub Discussions</a>: Previous community discussions.
          <br /><br />
          <strong>For ongoing development and support, please consider the community fork mentioned above.</strong>
        </p>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "APSHome",
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
.subtitle {
  font-size: 3rem;
  text-align: start;
}

.description {
  font-size: 2rem;
  margin:  1rem 0;
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
    width: 100px;
    /* width of container */
    height: 210px;
    /* height of container */
  }

  .title {
    font-size: 3rem;
  }

  .badgeWrapper {
    align-items: flex-start;
    flex-direction: column;
    gap: 1rem;
  }
}
</style>
