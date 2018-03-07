<template>
  <div class="container is-fluid">
    <nav class="breadcrumb is-right is-small has-succeeds-separator" aria-label="breadcrumbs">
      <div class="navbar-brand">
        <p class="title">Reservations</p>
      </div>
      <ul>
        <li><a href="#"><span class="icon is-small"><i class="fa fa-home"></i></span><span>Home</span></a></li>
        <li><a href="#"><span class="icon is-small"><i class="fa fa-tasks"></i></span><span>Reservations</span></a></li>
        <li class="is-active"><a href="#"><span class="icon is-small"><i class="fa fa-plus"></i></span><span>Reserve</span></a></li>
      </ul>
    </nav>

    <div class="tile is-ancestor">
      <div class="tile is-parent">
        <div class="tile is-child box">
          <h4>Reserve</h4>
          <div class="block">
            <b-field grouped group-multiline>
              <b-select v-model="defaultSortDirection">
                  <option value="asc">Default sort direction: ASC</option>
                  <option value="desc">Default sort direction: DESC</option>
              </b-select>
              <b-select v-model="perPage" :disabled="!isPaginated">
                  <option value="5">5 per page</option>
                  <option value="10">10 per page</option>
                  <option value="15">15 per page</option>
                  <option value="20">20 per page</option>
              </b-select>
              <div class="control">
                  <button class="button" @click="currentPage = 2" :disabled="!isPaginated">Set page to 2</button>
              </div>
              <div class="control is-flex">
                  <b-switch v-model="isPaginated">Paginated</b-switch>
              </div>
              <div class="control is-flex">
                  <b-switch v-model="isPaginationSimple" :disabled="!isPaginated">Simple pagination</b-switch>
              </div>
            </b-field>
            <button class="button field is-danger" @click="selected = {}"
                :disabled="!selected">
                <b-icon icon="close"></b-icon>
                <span>Clear selected</span>
            </button>

            <b-tabs>
              <b-tab-item label="Table">
                  <b-table
                      :data="rooms"
                      :selected.sync="selected"
                      :row-class="(row, index) => (row.room_status === 3 && 'is-success') || (row.room_status === 2 && 'is-danger') || (row.room_status === 1 && 'is-warning') "
                      :paginated="isPaginated"
                      :per-page="perPage"
                      :current-page.sync="currentPage"
                      :pagination-simple="isPaginationSimple"
                      :default-sort-direction="defaultSortDirection"
                      :default-sort="rooms.room_name"
                      focusable
                      >
                      <template slot-scope="props">
                        <b-table-column field="rooms.room_name" label="Room Name" sortable>
                            {{ props.row.room_name}}
                        </b-table-column>

                        <b-table-column field="rooms.room_type" label="Room Type" sortable>
                            {{ props.row.room_type }}
                        </b-table-column>

                        <b-table-column field="rooms.room_price" label="Room Price (Php)" sortable numeric centered>
                            {{ props.row.room_price }}
                        </b-table-column>
                    </template>

                  </b-table>
              </b-tab-item>

              <b-tab-item label="Reserve">
                <h4 class="title has-text-centered">Reservation Form</h4>
                <div class="level">
                  <div class="media">
                    <figure class="media-left">
                      <p class="image is-64x64">
                        <img src="/images/img_avatar.png">
                      </p>
                    </figure>
                    <div class="media-content">
                      <div class="content">
                        <p>
                          <strong>{{user.name}}</strong>
                          <br>
                          {{user.role}}, {{user.estab_name}}
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <hr></hr>
                <div class="columns">
                  <div class="column">
                    <h6 class="header">Selected Room Information</h6>
                    <b-field horizontal label="Room">
                        <b-field label="ID:">
                          <b-input v-model="selected.id" type="text" placeholder="Nothing selected" disabled></b-input>
                        </b-field>
                        <b-field label="Number:">
                          <b-input v-model="selected.room_number" type="text" placeholder="Nothing selected" disabled></b-input>
                        </b-field>
                    </b-field>
                    <b-field horizontal>
                      <b-field label="Name">
                          <b-input v-model="selected.room_name" type="text" placeholder="Nothing selected" disabled></b-input>
                      </b-field>
                      <b-field label="Price">
                          <b-input v-model="selected.room_price" class="text is-right" type="text" placeholder="Nothing selected" disabled></b-input>
                      </b-field>
                    </b-field>
                    <b-field label="Description">
                        <b-input v-model="selected.room_type" type="textarea" disabled></b-input>
                    </b-field>
                    <b-field horizontal label="Date">
                        <b-input name="from" placeholder="From"></b-input>
                        <b-input name="to" type="text" placeholder="To"></b-input>
                    </b-field>

                    <b-field horizontal label="Capacity">
                        <b-select placeholder="Select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </b-select>
                    </b-field>
                  </div>

                  <div class="column">
                    <h6 class="header">Guest Information</h6>
                    <b-field horizontal>
                        <b-input type="text" v-model="reservation.name" placeholder="Guest's name"></b-input>
                        <b-input type="text" placeholder="Age" numeric></b-input>
                    </b-field>
                    <b-field horizontal label="Birthdate">
                        <b-input placeholder="Birthdate"></b-input>
                    </b-field>
                    <b-field horizontal label="Marital Status">
                        <b-select placeholder="Status">
                            <option value="1">Single</option>
                            <option value="2">Married</option>
                            <option value="3">Widowed</option>
                        </b-select>
                    </b-field>
                    <b-field horizontal label="Occupation">
                        <b-input class="text is-right" type="text" placeholder="Occupation"></b-input>
                    </b-field>

                  </div>
                </div>
                <b-field horizontal><!-- Label left empty for spacing -->
                    <p class="control">
                        <button class="button is-primary" v-on:click.prevent="reserve_guest">
                          Reserve
                        </button>
                    </p>
                </b-field>
                <hr></hr>

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

              </b-tab-item>
            </b-tabs>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default{
  data(){
    const rooms = []

    return{
      isEmpty: false,
      rooms,
      selected:{},
      reservation:{
        name:'',
        room_id:'',
        user_id:''
      },
      isPaginated: true,
      isPaginationSimple: false,
      defaultSortDirection: 'asc',
      currentPage: 1,
      perPage: 5
    }
  },
  props:['user'],
  mounted(){
    var ro = this;
    axios.get('/dashboard.json')
          .then(function(response){
            ro.rooms = response.data;
            //console.log(ro.rooms);
          })
  },
  components:{

  },
  watch:{
    selected: function(){
      this.reservation.room_id = this.selected.id
      this.reservation.user_id = this.user.user_id
    }
  },
  methods:{
    reserve_guest: function(){
      var dat = this;
      //console.log(dat.selected)
      console.log(dat.reservation)
    }
  }
}
</script>
<style>
    tr.is-success {
        color: green;
    }
    tr.is-warning {
        color: orange;
    }
    tr.is-danger {
        color: hsl(14, 100%, 53%);
    }
</style>
