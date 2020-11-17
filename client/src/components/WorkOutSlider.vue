<template>
<div class= position>
  <v-carousel hide-delimiters>
    <v-carousel-item
      v-for="(item,i) in items"
      :key="i"
      :src="item.src"
    ></v-carousel-item>
  </v-carousel>

</div>
</template>

<script>
export default {
data(){
  return{
    items: [
          {
            src: 'https://hips.hearstapps.com/ame-prod-menshealth-assets.s3.amazonaws.com/main/assets/curlsthor3.gif?crop=1xw:1xh;center,top&resize=480:*',
          },
          {
            src: 'https://hips.hearstapps.com/ame-prod-menshealth-assets.s3.amazonaws.com/main/assets/curlszottman.gif?crop=1xw:1xh;center,top&resize=480:*',
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
.position{
  margin-top: 100px;
}
</style>