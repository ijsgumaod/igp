<template>
  <div class='border-layout'>
    <img src=''></img>
    <p>Log in to your account to get some great quotes.</p>
    <!--<div class="alert alert-danger" v-if="error">
      <p>{{ error }}</p>
    </div>-->
    <div class="form-group">
      <input
        type="text"
        class="form-control"
        placeholder="Enter your username"
        v-model="user.username"
      >
    </div>
    <div class="form-group">
      <input
        type="password"
        class="form-control"
        placeholder="Enter your password"
        v-model="user.password"
      >
    </div>
    <button class="btn btn-success">Access</button>
  </div>
</template>

<script>
/*import axios from 'axios'

export default{
  /*data(){
    return{
      user:{
        username: '',
        password: '',
      }
    }
  }/*,
  methods: {
    login: function () {
      var that = this;
      alert(that.user.username);
      axios.post('/sessions',
                { user: that.user
                })
           .then(function (response) {
             console.log(response);
           })
           .catch(function (error) {
                // Wu oh! Something went wrong
                console.log(error.message);
            });
    }
  }
}*/
</script>
