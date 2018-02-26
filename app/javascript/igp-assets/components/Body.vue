<template>
  <section>
    <div class="column">
      Body component
      <keep-alive>
        <component v-bind:is="currentView"></component>
      </keep-alive>
    </div>
  </section>
</template>

<script>
//components
import Vue from 'vue'
import Dashboard from './Dashboard.vue'
import Reservations from './Reservations/Reservations.vue'

export default{
  data(){
    return {
      currentView: ''
    }
  },
  components: {

  },
  methods:{
    isVisible: function(){

    }
  }
}
</script>
