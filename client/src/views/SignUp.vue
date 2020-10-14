<template>
  <form>
  
<div class="field">
                   <label class="label">First Name</label>
                  <div class="control has-icons-left has-icons-right">
                     <input class="input is-success" type="text" placeholder="First Name" >
                     <span class="icon is-small is-left">
                     <i class="fa fa-user-tag"></i>
                     </span>
                     <span class="icon is-small is-right">
                     <i class=""></i>
                     </span>

                     <label class="label">Last Name</label>
                  <div class="control has-icons-left has-icons-right">
                     <input class="input is-success" type="text" placeholder="Last Name" >
                     <span class="icon is-small is-left">
                     <i class="fa fa-user-tag"></i>
                     </span>
                     <span class="icon is-small is-right">
                     <i class=""></i>
                     </span>

                  <label class="label">Username</label>
                  <div class="control has-icons-left has-icons-right">
                     <input class="input is-success" type="text" placeholder="Username" >
                     <span class="icon is-small is-left">
                     <i class="fa fa-user"></i>
                     </span>
                     <span class="icon is-small is-right">
                     <i class="fa fa-check"></i>
                     </span>
                  </div>
                  <p class="help is-success">This username is available</p>
               </div>
               <div class="field">
                  <label class="label">Email</label>
                  <div class="control has-icons-left has-icons-right">
                     <input class="input is-success" type="email" placeholder="Email input" value="hello@">
                     <span class="icon is-small is-left">
                     <i class="fa fa-envelope"></i>
                     </span>
                     <span class="icon is-small is-right">
                     <i class="fa fa-check"></i>
                     </span>
                  </div>
                  <p class="help is-success">This email is available</p>
               </div>
               <div class="field">
                  <label class="label">Phone</label>
                  <div class="control">
                     <input class="input" type="text" placeholder="Phone Number">
                  </div>
               </div>
               <div class="field">
                  <label class="label">Gender</label>
                  <div class="control">
                     <div class="select">
                        <select>
                           <option>Select</option>
                           <option>Male</option>
                           <option>Female</option>
                        </select>
                     </div>
                  </div>
               </div>
               <div class="field">
                  <div class="control">
                     <label class="checkbox">
                     <input type="checkbox">
                     I agree to the <a href="#">terms and conditions</a>
                     </label>
                  </div>
               </div>
               <div class="field is-grouped">
                  <div class="control">
                     <button class="button is-link">Submit</button>
                  </div>
               </div>
            </div>
         </div>

</form>

</template>

<script>
export default {

}
</script>

<style>

</style>