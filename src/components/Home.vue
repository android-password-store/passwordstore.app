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
          class="button"
          href="https://docs.passwordstore.app/"
          target="_blank"
          rel="noopener noreferrer"
          >Documentation</a
        >
        <a
          v-if="stargazers"
          class="button"
          href="https://github.com/android-password-store/Android-Password-Store"
          target="_blank"
          rel="noopener noreferrer"
          >Stars: {{ stargazers }}
        </a>
        <a
          v-if="backers"
          class="button"
          href="https://opencollective.com/Android-Password-Store"
          target="_blank"
          rel="noopener noreferrer"
          >Backers: {{ backers }}
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
  data() {
    return {
      stargazers: "",
      backers: "",
    };
  },
  methods: {
    async fetchAPIData() {
      var myHeaders = new Headers();
      const accessToken = process.env.VUE_APP_GITHUB_ACCESS_TOKEN;
      if (accessToken != null) {
        myHeaders.append("Authorization", `Bearer ${accessToken}`);
      }

      var requestOptions = {
        method: "GET",
        headers: myHeaders,
        redirect: "follow",
      };
      const data = await Promise.all([
        fetch(
          `https://api.github.com/repos/android-password-store/Android-Password-Store`,
          requestOptions
        ).then((res) => (res.ok && res.json()) || Promise.reject(res)),
        fetch(`https://opencollective.com/android-password-store.json`)
          .then((res) => (res.ok && res.json()) || Promise.reject(res))
          .catch((e) => console.log(` Error occurred during API Call ${e}`)),
      ]);
      const kFormatter = (num) => {
        return Math.abs(num) > 999
          ? Math.sign(num) * (Math.abs(num) / 1000).toFixed(1) + "k"
          : Math.sign(num) * Math.abs(num);
      };
      this.stargazers = kFormatter(data[0].stargazers_count);
      this.backers = kFormatter(data[1].backersCount);
    },
  },
  created() {
    this.fetchAPIData();
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
.button {
  margin-top: 2rem;
  padding: 8px;
  font-size: 1.6rem;
  background-color: #3c5cce;
  color: #fff;
  border-radius: 6px;
}
.button a {
  color: #fff;
}
.button:hover {
  transition: box-shadow 0.5s ease-in;
  box-shadow: 1px 17px 41px 1px rgba(112, 144, 176, 0.29);
  -webkit-box-shadow: 1px 17px 41px 1px rgba(112, 144, 176, 0.29);
  -moz-box-shadow: 1px 17px 41px 1px rgba(112, 144, 176, 0.29);
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
