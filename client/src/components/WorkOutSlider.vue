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
          //  src: 'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/14034811_1782208738735042_2893354851055862203_n.jpg?_nc_cat=104&_nc_sid=09cbfe&_nc_ohc=yl8zEE8Dx4AAX_Ar08l&_nc_ht=scontent-lga3-1.xx&oh=0afc8550ed4e7e7ff45bc5507ad8601f&oe=5FAFD63A',
          },
          {
           // src: 'http://cs.newpaltz.edu/~dosreist/changcheng.png',
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