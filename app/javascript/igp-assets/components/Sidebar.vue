<template>
  <section class="tile is-parent">
    <div class="menu">
      <p class="menu-label">
        General
      </p>
      <ul class="menu-list">
        <li><a v:on-click.prevent="" ><i class="fa fa-home"></i> Home</a></li>
        <li><a href="/dashboard/#" ><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li>
          <b-collapse :open="false">
            <button class="button is-white" slot="trigger" slot-scope="props">
              <b-icon :icon="'tasks'" :size="'is-small'"></b-icon> Reservations <b-icon :icon="props.open ? 'angle-down' : 'angle-right'" :size="'is-small'"></b-icon>
            </button>
            <ul class="content">
              <li><a href="/reservations/#"><b-icon :icon="'desktop'" :size="'is-small'"></b-icon> Reservations </a> </li>
              <li><a href="/reservations/reserve/#"><b-icon :icon="'plus'" :size="'is-small'"></b-icon> New Reserve</a> </li>
              <li><a><b-icon :icon="'desktop'" :size="'is-small'"></b-icon> Monitor</a></li>
              <li><a><b-icon :icon="'pencil'" :size="'is-small'"></b-icon> Update</a></li>
            </ul>
        </b-collapse>
        </li>
      </ul>
      <p class="menu-label">
        Administration
      </p>
      <ul class="menu-list">
        <li><a><b-icon :icon="'user'" :size="'is-small'"></b-icon> Users Management</a></li>
      </ul>
    </div>
  </section>
</template>

<script>
//import Dashboard from './Dashboard.vue'
//import Reservations from './Reservations.vue'
//import Collapse from 'vue-bulma-collapse/src/Collapse.vue'
//import Item from 'vue-bulma-collapse/src/Item.vue'

export default{
  // components:{
  //   'collapse': Collapse,
  //   'collapse-item': Item
  // },
  data(){
    return {
      //currentView: Dashboard
    }
  },
  watch:{

  },
  methods:{
    dashboard: function(event){
      //this.currentView = Dashboard
    },
    reservations: function(event){
      //this.currentView = Reservations
    }
  }
}
</script>
<style>
.is-blocked{
  border-style: none;
}
</style>
