import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Buefy from 'buefy'

import 'buefy/dist/buefy.css'
import '@fortawesome/fontawesome-free/css/all.css'
import vuetify from './plugins/vuetify';
import VueSimpleAlert from "vue-simple-alert";
Vue.config.productionTip = false
Vue.use(VueSimpleAlert);
Vue.use(Buefy)

new Vue({
  router,
  vuetify,
  render: h => h(App)
}).$mount('#app')
