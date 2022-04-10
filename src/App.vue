<template>
	<div class="section1">
		<Navbar />
		<Home msg="Android Password Store" />
	</div>
</template>

<script>
import Home from "@/components/Home.vue";
import Navbar from "@/components/Navbar.vue";
export default {
	components: {
		Home,
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
</style>
