<template>


<nav class="navbar container is-fixed-top is-black" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="">
        <img src="../assets/logo.png" />
    </a>

    <a role="button" class="navbar-burger burger" :class="{'is-active': isActive}" @click='isActive = !isActive'  aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu" :class="{'is-active': isActive}">
    <div class="navbar-start">
    

     <router-link to="/" class="navbar-item">  Home </router-link> 
   
      <router-link to="/workouts" class="navbar-item">WorkOuts</router-link>
     <!-- <router-link to="/friends" class="navbar-item">Friends</router-link> -->
       <router-link to="/about" class="navbar-item">About</router-link>

      <div class="navbar-item has-dropdown is-hoverable">
<a class="navbar-link">Admin</a>

<div class="navbar-dropdown">
<router-link to="/users" class="navbar-item">Users</router-link>
</div>
</div>
</div>

    <div class="navbar-end">
      <div class="navbar-item">
       <LoginBadge />
      </div>
      <div class = "navbar-item">
         <Signout />
      </div>

    </div>
  </div>
</nav>


</template>

<script>

import LoginBadge from "@/components/LoginBadge";
import Signout from "@/components/signout";
export default {
data:()=>({
  isActive: false
}),
methods:{

},
components:{
  LoginBadge,
  Signout
}
}
</script>

<style>

</style>