
<template>

<div>
 <div class= "about">
  <p align ="center" class="dotted"> 
    <i class="fas fa-dumbbell"></i>
This app is designed for you to stay ontop of your Game.<br>
You are able to log you workouts and track your progress in one place.<br>
Welcome to the next chapter of your fitness goals
    </p>
    </div>


  
    <transition-group name="fade" tag="div">
      <div v-for="i in [currentIndex]" :key="i">
        <img :src="currentImg" />
      </div>
    <transition name="slide-fade"></transition>
    </transition-group>
    <a class="prev" @click="prev" href="#">&#10094; Previous</a>&nbsp;&nbsp;
    <a class="next" style = "margin:5px;" @click="next" href="#">&#10095; Next</a>
    
   
    <br><br><br><br>
    
   
 </div>
  
</template>



<script>
import LoginBadge from "@/components/LoginBadge";
export default {
  name: "Slider",
  data() {
    return {
      images: [
        "https://dbukjj6eu5tsf.cloudfront.net/sidearm.sites/nphawks.com/images/2020/1/24/AT7I1951.jpg " ,
        "https://images.pexels.com/photos/4720303/pexels-photo-4720303.jpeg?cs=srgb&dl=pexels-ketut-subiyanto-4720303.jpg&fm=jpg",
        "https://images.pexels.com/photos/38630/bodybuilder-weight-training-stress-38630.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "https://images.pexels.com/photos/1480520/pexels-photo-1480520.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "https://pbs.twimg.com/media/EW9HHNRWsAA4_lz.jpg"
      ],
      timer: null,
      currentIndex: 0
    };
  },
  mounted: function() {
    this.startSlide();
  },
  methods: {
    startSlide: function() {
      this.timer = setInterval(this.next, 5500);
    },
    next: function() {
      this.currentIndex += 1;
    },
    prev: function() {
      this.currentIndex -= 1;
    }
  },
  computed: {
    currentImg: function() {
      return this.images[Math.abs(this.currentIndex) % this.images.length];
    }
  }
};
</script>

<style>
    #Slider{
    background-size:cover;
    background-position:center;
    height:100vh;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    text-align:center;
    padding:0 20px;
    animation: 
    animate 20s ease-in-out infinite;
    
    
}

p.dotted {
  border-style: dotted;
  color: rgb(100, 100, 218);
  }
.about{
margin-top: 20px;
border-width: 20xp;
size: 100px;


}




    .slide-fade-enter-active {
    transition: all 2s ease;
}
    .slide-fade-leave-active {
  transition: all .8s cubic-bezier(1.0, 0.5, 0.8, 1.0);
}
    .slide-fade-enter, .slide-fade-leave-to
    /* .slide-fade-leave-active below version 2.1.8 */ {
    transform: translateY(30px);
    opacity: 0;
}
    form{
        margin-top: 30px;
    }
</style>