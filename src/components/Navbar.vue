<template>
  <nav class="navContainer">
    <div class="wrapper">
      <img class="logo" src="@/assets/FG.png" >
    </div>
    <div class="btnContainer">
      <a class="btn" href="https://play.google.com/store/apps/details?id=dev.msfjarvis.aps" target="_blank" rel="noreferrer">
        <img class="logoPlay" src="@/assets/play.svg">
      </a>
      <a class="btn" href="https://f-droid.org/packages/dev.msfjarvis.aps" target="_blank" rel="noreferrer">
        <img class="logoPlay" src="@/assets/fdroid.svg">
      </a>
      <a class="btn" href="https://github.com/android-password-store" target="_blank" rel="noreferrer">
        <img class="logoPlay" src="@/assets/github.svg">
      </a>
    </div>
  </nav>
</template>

<style scoped>
  .navContainer {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between ;
    margin-top: 1rem; 
  }

  .wrapper {
    display: flex;
    flex-direction: row;
    align-items: center;
  }

  .logo {
    height: 62px;
    width: 62px;
  }

  .btnContainer {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 2rem;
  }

  .btn :hover {
    transition: box-shadow 0.5s ease-in;
     box-shadow: 1px 17px 41px 1px rgba(112,144,176,0.29);
    -webkit-box-shadow: 1px 17px 41px 1px rgba(112,144,176,0.29);
    -moz-box-shadow: 1px 17px 41px 1px rgba(112,144,176,0.29);
  }

  .logoPlay {
    border: 1px solid #E9EDF7;
    border-radius: 6px;
    padding: 0.4rem;
    height: 40px;
    width: 40px;
  }

  @media (max-width: 760px) {
     .logo {
    height: 54px;
    width: 54px;
  }
    .logoPlay {
    height: 32px;
    width: 32px;
  }
  }
</style>