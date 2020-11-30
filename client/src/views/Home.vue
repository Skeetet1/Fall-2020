<template>
<div class="home">
  <section class="hero is-dark">
    <div class="hero-body">
      <div class="container">
        <h1 class="title">
          Welcome to Skeete's Fitness         
        </h1>
        <h2 class="subtitle">
          Where We Work Now and Flex Later
        </h2>
  
          <center><router-link to="/signup">
    <button  class="button , is-danger">Get Started</button></router-link></center>
        
      </div>




    </div>
        </section>
        <Nav />
</div>
</template>

<script>
export default {
  name: 'Home',
  components: {
  }
}
</script>
<style lang="scss" scoped>
  .gif{
    margin-left: 1000px;
    margin-top: 90px;
   
  }
  
  .button{
    margin-top: 100px;
    
  }
  .hero {    
    text-align: center;
    background-image: url("../assets/weights.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 500px;
  }
  .hero-body .title {
    text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.6);
    padding: 40px 0 20px 0;
    font-size: 100px;
  }
  .subtitle {
    text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.7);
    font-size: 30px;
  }
  
   
  
 
</style>