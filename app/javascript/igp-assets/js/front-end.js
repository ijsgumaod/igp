//node_modules
import Vue from 'vue/dist/vue'
import axios from 'axios'
import BootstrapVue from 'bootstrap-vue';
//components
import Profile from '../components/Profile.vue'
import Rooms from '../components/Rooms.vue'
import Dashboard from '../components/Dashboard.vue'

document.addEventListener('turbolinks:load', () => {
  /*var Monitor = new Vue({
    el: '#monitor',
    render: h => h(Rooms)
  })*/
 new Vue({
    el: '#app',
    data:{
      currentView: 'dashboard'
    },
    components:{
      dashboard: Dashboard
      //'dashboard':'monitor-component'
    },
    methods:{
      dashboard: function(event){
        this.currentView = 'dashboard'
      },
      reservation: function(event){
        this.currentView = 'reservation'
      }
    }
  })

  /*var user = new Vue({
    el: '#user-list',
    render: h => h(User)
  })
  /*var user = new Vue({
    el: '#user-list',
    data:{
      users: []
    },
    mounted: function() {
      var that;
      that = this;
      $.ajax({
        url: '/dashboard.json',
        success: function(res) {
          that.users = res;
        }
      });
      /*axios('/dashboard.json')
            .then(function (response) {
              that.users = response.data;
              //user.id = response.data.id;
              //user.name = response.data.name;
              console.log(response);
            })
            .catch(function (error) {
                 // Wu oh! Something went wrong
                 console.log(error.message);
             });
    }
  })*/

})
