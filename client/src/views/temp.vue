<template>
<form>
  <v-row justify="center">
    <v-dialog
      v-model="dialog"
      scrollable
      max-width="300px"
    >
      <template v-slot:activator="{ on, attrs }">
        <v-btn
          color="primary"
          dark
          v-bind="attrs"
          v-on="on"
        >
        Day Of The Week 
        </v-btn>
      </template>


          <v-btn
            color="blue darken-1"
            text
            @click="dialog = false"
          >
            Close
          </v-btn>
          <v-btn
            color="blue darken-1"
            text
            @click="dialog = false"
          >
            Save
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-row>
  <div class="field has-addons">
  <div class="control is-expanded">
    <div class="select is-fullwidth">
      <select name="exercise_types">
        <option value="empty"></option>

        <option value="Monday">Monday</option>
         <option value="Tuesday">Tuesday</option>
         <option value="Wednesday">Wednesday</option>

        <option value="Thursday">Thursday</option>
         <option value="Friday">Friday</option>
         <option value="Saturday">Saturday</option>

         <option value="Sunday">Sunday</option>
         
         
      </select>
    </div>
  </div>
  <div class="control">
    <button type="submit" class="button is-primary">Choose</button>
  </div>
</div>

<div class="field">

  <v-btn    class ="DateHeader"
          color="primary"
          dark
          v-bind="attrs"
          v-on="on"
        >
        Enter Date 
        </v-btn>
  
  <div class="control">
    <input class="input" type="text" placeholder="Date">
  </div>
</div>

<div class="field">
  <label class="label">Tuesday</label>
  <div class="control">
    <input class="input" type="text" placeholder="Text input">
  </div>
</div>
<div class="field">
  <label class="label">Wednesday</label>
  <div class="control">
    <input class="input" type="text" placeholder="Text input">
  </div>
</div>
<div class="field">
  <label class="label">Thursday</label>
  <div class="control">
    <input class="input" type="text" placeholder="Text input">
  </div>
</div>
<div class="field">
  <label class="label">Friday</label>
  <div class="control">
    <input class="input" type="text" placeholder="Text input">
  </div>
</div>
<div class="field">
  <label class="label">Saturday</label>
  <div class="control">
    <input class="input" type="text" placeholder="Text input">
  </div>
</div>
<div class="field">
  <label class="label">Sunday</label>
  <div class="control">
    <input class="input" type="text" placeholder="Text input">
  </div>
</div>





<div class="field">
  <div class="control">
    <label class="checkbox">
      <input type="checkbox">
      I completed the exercises and gave it my all
    </label>
  </div>
</div>

<div class="field">
  <div class="control">
    <label class="radio">
      <input type="radio" name="question">
      Ahead of Schedule
    </label>
    <label class="radio">
      <input type="radio" name="question">
      On Track
    </label>
    <label class="radio">
      <input type="radio" name="question">
      Feeling Behind
    </label>
  </div>
</div>

<div class="field is-grouped">
  <div class="control">
    <button class="button is-link">Add to Log</button>
  </div>
 
</div>
</form>
</template>

<script>
  export default {
    data () {
      return {
        dialogm1: '',
        dialog: false,
      }
    },
  }
</script>

<style>

.facts{
  margin-top:0px;
}

    form{
        margin-top: 30px;
    }
</style>