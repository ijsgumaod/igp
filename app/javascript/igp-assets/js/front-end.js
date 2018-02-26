//node_modules
import Vue from 'vue/dist/vue'
//import TurbolinksAdapter from 'vue-turbolinks';
import Buefy from 'buefy/src'
//import Home from '../components/Home.vue';

import Dashboard from '../components/Dashboard.vue'
import Reservations from '../components/Reservations/Reservations.vue'
import Sidebar from '../components/Sidebar.vue'
import Navbar from '../components/Navbar.vue'
import Reserve from '../components/Reservations/Reserve.vue'

//Vue.use(TurbolinksAdapter)
Vue.use(Buefy, {
  defaultIconPack: 'fa'
})

document.addEventListener('turbolinks:load', () => {

  const user = document.getElementById("current-user")
  const props = JSON.parse(user.getAttribute('data'))

  var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach(function ($el) {
      $el.addEventListener('click', function () {

        // Get the target from the "data-target" attribute
        var target = $el.dataset.target;
        var $target = document.getElementById(target);

        // Toggle the class on both the "navbar-burger" and the "navbar-menu"
        $el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

  if (props != null) {
    console.log(props)

    new Vue({
       el: '#app',
       props:{
         user:{
           default: function()
           {
             return {props}
           }
         }
       },
       components:{
         sidebar: Sidebar,
         navbar: Navbar,
         dashboard: Dashboard,
         reservations: Reservations,
         reserve: Reserve
       },
       methods:{

       },
     })
  }
})
