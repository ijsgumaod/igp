<template>
  <section class="content container-fluid">
    <section class="content-header">
      <h1>
        DASHBOARD
        <small>IGP details</small>
      </h1>
      <ol class="breadcrumb">
        <li><i class="fa fa-dashboard"></i> Dashboard</li>
        <li class='active'>Details</li>
      </ol>
    </section>
    <div class='box box-warning'>
      <div class='panel-heading'>
        <h4>Reports</h4>
      </div>
      <div class='box-body'>
        <charts></charts>
      </div>
    </div>

    <div class='box box-success'>
      <div class='panel-heading'>
        <h4>Monitor</h4>
      </div>
      <div class='box-body'>
        <rooms></rooms>
      </div>
    </div>
  </section>

</template>

<script>
import Vue from 'vue'
import Rooms from './Rooms.vue'
import Charts from './Charts.vue'

//Vue.component('rooms', Rooms);

export default{
  data(){
    return{

    }
  },
  components:{
    rooms: Rooms,
    charts: Charts
  }
}
</script>
