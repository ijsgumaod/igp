<template>
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
            <b-table-column field="room_price" label="Room Price">
                {{ props.row.room_price }}
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

    <b-tab-item label="Apartelle">
      <b-table :data="isEmpty ? [] : rooms" :striped="true" :hoverable="true" :focusable="true">
        <template slot-scope="props" v-if="props.row.establishment_id == 1">
          <b-table-column field="room_status" label="Room Status">
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
          <b-table-column field="room_price" label="Room Price">
              {{ props.row.room_price }}
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
        <b-tab-item label="Balay Alumni">
          <b-table :data="isEmpty ? [] : rooms" :striped="true" :hoverable="true" :focusable="true">
            <template slot-scope="props" v-if="props.row.establishment_id == 2">
              <b-table-column field="room_status" label="Room Status">
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
              <b-table-column field="room_price" label="Room Price">
                  {{ props.row.room_price }}
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

        <b-tab-item label="Hostel">
          <b-table :data="isEmpty ? [] : rooms" :striped="true" :hoverable="true" :focusable="true">
            <template slot-scope="props" v-if="props.row.establishment_id == 3">
              <b-table-column field="room_status" label="Room Status">
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
              <b-table-column field="room_price" label="Room Price">
                  {{ props.row.room_price }}
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

        <b-tab-item label="Seafront Suite">
          <b-table :data="isEmpty ? [] : rooms" :striped="true" :hoverable="true" :focusable="true">
            <template slot-scope="props" v-if="props.row.establishment_id == 4">
              <b-table-column field="room_status" label="Room Status">
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
              <b-table-column field="room_price" label="Room Price">
                  {{ props.row.room_price }}
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

</template>

<script>
import Vue from 'vue'
import axios from 'axios'

//Vue.component('monitor-component', {template: '#monitor-page'});

export default{
  data(){
    return{
      rooms: [],
      isEmpty: false
    }
  },
  watch:{
    establishment(value){
      this.establishment_id = value
    }
  },
  mounted(){
    var ro = this;
    axios.get('/dashboard.json')
          .then(function(response){
            ro.rooms = response.data;
            //console.log(ro.rooms);
          })
  },
  methods: {
    select: function(event){
      alert(event.target);
    }
 }
}
</script>

<style>

</style>
