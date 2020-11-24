<template>
<div class= "page">
      <div class= "columns">
            <div class="column is-two-thirds">
             <WorkOutSlider/>
            </div>
            <div class="column is-one-quarter">
              <WorkOutCols/>
            </div>
      </div>
</div>







</template>

<script>
import WorkOutCols from "@/components/WorkOutCols";
import WorkOutSlider from "@/components/WorkOutSlider";

export default {
components:{
  WorkOutCols,WorkOutSlider,
}
}
</script>

<style>

</style>
