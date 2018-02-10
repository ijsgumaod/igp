<template>
  <div class="row">
    <div class="col-md-12">
      <!-- Nav tabs -->
      <div class="card">
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#apartelle" aria-controls="apartelle" role="tab" data-toggle="tab"><span>Apartelle</span></a></li>
          <li role="presentation"><a href="#balay-alumni" aria-controls="balay-alumni" role="tab" data-toggle="tab"><span>Balay Alumni</span></a></li>
          <li role="presentation"><a href="#hostel" aria-controls="hostel" role="tab" data-toggle="tab"><span>Hostel</span></a></li>
          <li role="presentation"><a href="#seafront-suite" aria-controls="seafront-suite" role="tab" data-toggle="tab"><span>Seafront Suite</span></a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
          <div role="tabpanel" class="tab-pane active" id="apartelle">
            <table class='table table-responsive-sm table-hover table-striped'>
              <thead class="thead-light">
                <tr>
                  <th scope="col">Room Status</th>
                  <th scope="col">Room No.</th>
                  <th scope="col">Room Name</th>
                  <th scope="col">Room Type</th>
                  <th scope="col">Room Price</th>
                </tr>
              </thead>
              <tbody>
                <tr class="text-justified" v-for="room in this.rooms" v-if="room.establishment_id == 1">
                  <td>
                    <small class='text-italic text-muted text-success' v-if="room.room_status == 3"> Vacant</small>
                    <small class='text-italic text-muted text-warning' v-else-if="room.room_status == 2"> Reserved</small>
                    <small class='text-italic text-muted text-danger' v-else> Occuppied</small>
                  </td>
                  <td>{{room.room_number}}</td>
                  <td>{{room.room_name}}</td>
                  <td>{{room.room_type}}</td>
                  <td><small class='text-muted'>Php{{room.room_price}}</small></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div role="tabpanel" class="tab-pane" id="balay-alumni">
            <table class='table table-striped'>
              <thead class="thead-light">
                <tr>
                  <th scope="col">Room Status</th>
                  <th scope="col">Room No.</th>
                  <th scope="col">Room Name</th>
                  <th scope="col">Room Type</th>
                  <th scope="col">Room Price</th>
                </tr>
              </thead>
              <tbody>
                <tr class="text-justified" v-for="room in this.rooms" v-if="room.establishment_id == 2">
                  <td>
                    <small class='text-italic text-muted text-success' v-if="room.room_status == 3"> Vacant</small>
                    <small class='text-italic text-muted text-warning' v-else-if="room.room_status == 2"> Reserved</small>
                    <small class='text-italic text-muted text-danger' v-else> Occuppied</small>
                  </td>
                  <td>{{room.room_number}}</td>
                  <td>{{room.room_name}}</td>
                  <td>{{room.room_type}}</td>
                  <td><small class='text-muted'>Php{{room.room_price}}</small></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div role="tabpanel" class="tab-pane" id="hostel">
            <table class='table table-striped'>
              <thead class="thead-light">
                <tr>
                  <th scope="col">Room Status</th>
                  <th scope="col">Room No.</th>
                  <th scope="col">Room Name</th>
                  <th scope="col">Room Type</th>
                  <th scope="col">Room Price</th>
                </tr>
              </thead>
              <tbody>
                <tr class="text-justified" v-for="room in this.rooms" v-if="room.establishment_id == 3">
                  <td>
                    <small class='text-italic text-muted text-success' v-if="room.room_status == 3"> Vacant</small>
                    <small class='text-italic text-muted text-warning' v-else-if="room.room_status == 2"> Reserved</small>
                    <small class='text-italic text-muted text-danger' v-else> Occuppied</small>
                  </td>
                  <td>{{room.room_number}}</td>
                  <td>{{room.room_name}}</td>
                  <td>{{room.room_type}}</td>
                  <td><small class='text-muted'>Php{{room.room_price}}</small></td>
                </tr>
              </tbody>
            </table>
          </div>
          <div role="tabpanel" class="tab-pane" id="seafront-suite">
            <table class='table table-striped'>
              <thead class="thead-light">
                <tr>
                  <th scope="col">Room Status</th>
                  <th scope="col">Room No.</th>
                  <th scope="col">Room Name</th>
                  <th scope="col">Room Type</th>
                  <th scope="col">Room Price</th>
                </tr>
              </thead>
              <tbody>
                <tr class="text-justified" v-for="room in this.rooms" v-if="room.establishment_id == 4">
                  <td>
                    <small class='text-italic text-muted text-success' v-if="room.room_status == 3"> Vacant</small>
                    <small class='text-italic text-muted text-warning' v-else-if="room.room_status == 2"> Reserved</small>
                    <small class='text-italic text-muted text-danger' v-else> Occuppied</small>
                  </td>
                  <td>{{room.room_number}}</td>
                  <td>{{room.room_name}}</td>
                  <td>{{room.room_type}}</td>
                  <td><small class='text-muted'>Php{{room.room_price}}</small></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
//import Vue from 'vue'
import axios from 'axios'

//Vue.component('monitor-component', {template: '#monitor-page'});

export default{
  data(){
    return{
      rooms:[]
    }
  },
  mounted(){
    var ro = this;
    axios.get('/dashboard.json')
          .then(function(response){
            ro.rooms = response.data;
            //console.log(ro.rooms);
          })
  }
}
</script>

<style>

</style>
