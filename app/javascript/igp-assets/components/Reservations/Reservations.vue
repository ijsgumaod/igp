<template>
  <div class="container is-fluid">
    <nav class="breadcrumb is-right is-small has-succeeds-separator" aria-label="breadcrumbs">
      <div class="navbar-brand">
        <p class="title">Reservations</p>
      </div>
      <ul>
        <li><a href="#"><span class="icon is-small"><i class="fa fa-home"></i></span><span>Home</span></a></li>
        <li class="is-active"><a href="#"><span class="icon is-small"><i class="fa fa-tasks"></i></span><span>Reservations</span></a></li>
      </ul>
    </nav>

    <div class="tile is-ancestor">
      <!--<div class="tile is-parent is-6">
        <article class="tile is-child box">
          <h4 class="title">Guest Information</h4>
          <div class="content">
            Open
          </div>
        </article>
      </div>-->
      <div class="tile is-parent">
        <article class="tile is-child box">
          <h4>Establishment</h4>
          <div class="content">
          </div>
        </article>
      </div>
    </div>
  </div>
</template>

<script>

export default{
  data(){
    return{

    }
  },
  mounted(){
    
  },
  components:{

  }
}
</script>
