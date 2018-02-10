<template>
  <div id='user'>
    <div class='list-group' v-if="user.online === true" v-for='user in users' href="#" class="list-group-item">
      <div class='list-group-item'>
        <i id='status'><img src='/images/green-icon.png' width='8'/></i>
        {{ user.name }}
      </div>
    </div>
  </div>
</template>

<script>
//import axios from 'axios'
export default{
  data(){
    return{
      users:[]
    }
  },
  mounted: function() {
    var that;
    that = this;
    $.ajax({
      url: '/dashboard.json',
      success: function(res) {
        that.users = res;
      }
    });
  }
}
</script>
