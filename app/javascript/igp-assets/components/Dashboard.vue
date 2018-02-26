<template>
  <div class="container is-fluid">
    <nav class="breadcrumb is-right is-small has-succeeds-separator" aria-label="breadcrumbs">
      <div class="navbar-brand">
        <p class="title">Dashboard</p>
      </div>
      <ul>
        <li><a href="#"><span class="icon is-small"><i class="fa fa-home"></i></span><span>Home</span></a></li>
        <li class="is-active"><a href="#"><span class="icon is-small"><i class="fa fa-dashboard"></i></span><span>Dashboard</span></a></li>
      </ul>
    </nav>

    <div class="tile is-ancestor">
      <div class="tile is-parent">
        <article class="tile is-child box">
          <h4>Reports</h4>
          <div class="content">
            <charts></charts>
          </div>
        </article>
      </div>
    </div>

    <div class="tile is-ancestor">
      <div class="tile is-parent">
        <article class="tile is-child box">
          <h4>Rooms</h4>
          <div class="content">
            <rooms></rooms>
          </div>
        </article>
      </div>
    </div>

  </div>
</template>

<script>
import Rooms from '../components/Rooms.vue'
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
