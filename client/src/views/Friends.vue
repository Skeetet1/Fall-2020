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
          Exercise Selector
        </v-btn>
      </template>
      <v-card>
        <v-card-title>Select Exercises for Today</v-card-title>
        <v-divider></v-divider>
        <v-card-text style="height: 300px;">
          <v-radio-group
            v-model="dialogm1"
            column
          >
            <v-radio
              label="Lunges"
              value="lunges"
            ></v-radio>
            <v-radio
              label="Pushups"
              value="pushups"
            ></v-radio>
            <v-radio
              label="Squats"
              value="squats"
            ></v-radio>
            <v-radio
              label="Standing overhead dumbbell presses"
              value="standing-overhead-dumbbell-presses"
            ></v-radio>
            <v-radio
              label="Dumbbell rows"
              value="dumbell-rows"
            ></v-radio>
            <v-radio
              label="Single-leg deadlifts"
              value="single-leg-deadlifts"
            ></v-radio>
            <v-radio
              label="Burpees"
              value="burpees"
            ></v-radio>
            <v-radio
              label="Side planks"
              value="side-planks"
            ></v-radio>
            <v-radio
              label="Planks"
              value="planks"
            ></v-radio>
            <v-radio
              label="Glute bridge"
              value="glute-bridge"
            ></v-radio>
          </v-radio-group>
        </v-card-text>
        <v-divider></v-divider>
        <v-card-actions>
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

          <option value="empty"></option>
        <option value="pushup">Push-Up</option>
         <option value="triceps_dips">Triceps Dips</option>
         <option value="pullup">Pull-Up</option>

        <option value="squat">Squat</option>
         <option value="lunges">Lunges</option>
         <option value="single_leg_squat">Single-Leg Squat</option>

         <option value="Crunches">Crunches</option>
         <option value="V-ups">V-ups</option>
         <option value="Russian Twists">Russian Twists</option>
         <option value="side_bridge">Side Bridge</option>

        <option value="Cleans">Cleans</option>
        <option value="swiss_ball_hamstring_curl">Swiss Ball Hamstring Curl</option>

        <option value="lateral_shoulder_raise">Lateral Shoulder Raise</option>
      </select>
    </div>
  </div>
  <div class="control">
    <button type="submit" class="button is-primary">Choose</button>
  </div>
</div>
<div class="field">
  <label class="label">Monday</label>
  <div class="control">
    <input class="input" type="text" placeholder="Text input">
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
    form{
        margin-top: 30px;
    }
</style>