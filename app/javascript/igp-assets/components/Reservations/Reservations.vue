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
            <section>
              <b-tabs position="is-centered" expanded class="block">
                <b-tab-item label="Establishments Status">
                  <b-table :data="isEmpty ? [] : rooms" :striped="true" :hoverable="true" :focusable="true">
                    <template slot-scope="props">
                      <b-table-column  v-on:click.prevent="select" v-bind:id="props.row.room_id" field="room_status" label="Room Status" >
                        <span class='tag is-success' v-if="props.row.room_status == 3"> Vacant</span>
                        <span class='tag is-warning' v-else-if="props.row.room_status == 2"> Reserved</span>
                        <span class='tag is-danger' v-else> Occuppied</span>
                      </b-table-column>
                      <b-table-column field="room_number" label="Room No.">
                          {{ props.row.room_number }}
                      </b-table-column>
                      <b-table-column field="room_name" label="Room Name">
                          {{ props.row.room_name }}
                      </b-table-column>
                      <b-table-column field="room_type" label="Room Type">
                          {{ props.row.room_type }}
                      </b-table-column>
                  </template>

                  <template slot="empty">
                      <section class="section">
                          <div class="content has-text-grey has-text-centered">
                              <p>
                                  <b-icon
                                      icon="emoticon-sad"
                                      size="is-large">
                                  </b-icon>
                              </p>
                              <p>Nothing here.</p>
                          </div>
                        </section>
                    </template>
                  </b-table>
                </b-tab-item>
              </b-tabs>
            </section>
          </div>
        </article>
      </div>

    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default{
  data(){
    return{
      rooms:[],
      isEmpty: false
    }
  },
  mounted(){
    var ro = this;
    axios.get('/dashboard.json')
          .then(function(response){
            ro.rooms = response.data;
            console.log(ro.rooms);
          })
  },
  components:{

  }
}
</script>
