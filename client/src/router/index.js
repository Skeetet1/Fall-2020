import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import SignUp from '../views/SignUp.vue'
import Workouts from '../views/Workouts.vue'
import Friends from '../views/Friends.vue'
import Users from'../views/Users.vue'
import session from '../models/session'





Vue.use(VueRouter)

const routes = [
  { path: "/", 
  name: "Home",
  component: Home,

},

  { path: '/login', name: 'Login',component: Login},
  { path: '/signup', name: 'SignUp',component: SignUp},


  { path: '/workouts', name: 'Workouts',component: Workouts,

},



  { path: '/friends', name: 'Friends',component: Friends},

  {path: '/users', name: 'Users',
  component: Users
  
  },
  {path: '/about', name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')


  }

 
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})




export default router


function checkSessionUser (to, from, next) {
  if(session.user){
    next();
  }else{
    next('Login');
  }
}

