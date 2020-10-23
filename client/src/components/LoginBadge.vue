<template>

<div id ="LoginBadge">

  
 


   <div class="buttons" >
            <router-link to="/signup" class="button is-light">
            Sign up
            </router-link>
          
         
        <router-link to="/login" class="button is-light">
            Log in
        </router-link>
        </div>
</div>

</template>

<script>
import session from "@/models/session";

export default {
    data:()=> ({
      session

    })
}
</script>

<style>

</style>

