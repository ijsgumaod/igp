<template>
  <section>
    <navbar></navbar>
    <div class="columns" style="margin-top:72px;">
      <div class="column is-narrow">
        <sidebar></sidebar>
      </div>
      <div class="column">
        <main-body></main-body>
      </div>
    </div>
  </section>
</template>

<script>
//components
import Vue from 'vue'
import Body from './Body.vue'
import Sidebar from './Sidebar.vue'
import Navbar from './Navbar.vue'

export default{
  data(){
    return {

    }
  },
  components: {
    sidebar: Sidebar,
    navbar: Navbar,
    'main-body': Body
  },
  methods:{
    isVisible: function(){

    }
  }
}
</script>
