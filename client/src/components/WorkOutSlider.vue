<template>
  <v-carousel hide-delimiters>
    <v-carousel-item
      v-for="(item,i) in items"
      :key="i"
      :src="item.src"
    ></v-carousel-item>
  </v-carousel>
</template>

<script>
export default {
data(){
  return{
    items: [
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg',
          },
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/sky.jpg',
          },
          {
            src: 'https://dbukjj6eu5tsf.cloudfront.net/sidearm.sites/nphawks.com/images/2020/1/24/AT7I1951.jpg',
          },
          {
            src: 'https://dbukjj6eu5tsf.cloudfront.net/sidearm.sites/nphawks.com/images/2020/3/4/DSC_0154.JPG',
          },
        ],
      }
    },
}
</script>

<style>

</style>