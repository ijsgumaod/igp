<template>
  <section>
    <nav class="navbar is-fixed-top is-transparent has-shadow">
      <div class="navbar-brand">
          <a class="navbar-item">
              <img src="/images/vsu-logo23.png" alt="VSU">
          </a>
      </div>

      <div class="navbar-menu is-active" >
          <div class="navbar-end">
               <b-dropdown hoverable position="is-bottom-left">
                  <a class="navbar-item" slot="trigger">
                    <b-icon icon="user"></b-icon>
                      <span>{{user.name}}</span>
                    <b-icon icon="angle-down"></b-icon>
                  </a>

                  <b-dropdown-item subheader>
                      Logged as <b>{{ user.username }}</b>
                  </b-dropdown-item>
                  <b-dropdown-item separator />
                  <b-dropdown-item has-link>
                      <a href="https://google.com" target="_blank">
                          <b-icon icon="link"></b-icon>
                          Google (link)
                      </a>
                  </b-dropdown-item>
                  <hr class="dropdown-divider">
                  <b-dropdown-item value="settings">
                      <b-icon icon="cog"></b-icon>
                      Settings
                  </b-dropdown-item>
                  <b-dropdown-item value="logout" has-link>
                    <a href="/logout" data-method="delete">
                      <b-icon icon="sign-out"></b-icon>
                      Logout
                    </a>
                  </b-dropdown-item>
              </b-dropdown>
          </div>
      </div>
    </nav>
  </section>
</template>

<script>
import axios from 'axios'

export default{
  data(){
    return{

    }
  },
  props:['user'],
  methods:{
    logout: function(id){
      axios.get({

      })
    }
  }
  ,
  mounted(){
    var ro = this;
    // axios.get('/users/:id.json')
    //       .then(function(response){
    //         ro.user = response.data;
    //         console.log(response.data);
    //       })
  }
}
</script>
