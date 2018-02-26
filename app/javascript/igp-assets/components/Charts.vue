<template>
  <div class="tile is-ancestor">
    <div class="tile is-parent">
      <article class="tile is-child box">
        <h4 class="title">LINES</h4>
        <div class="block">
          <chart :type="'Line'" :data="data" :options="options"></chart>
        </div>
      </article>
    </div>
    <div class="tile is-parent">
      <article class="tile is-child box">
        <h4 class="title">BARS</h4>
        <div class="block">
          <chart :type="'Bar'" :data="data" :options="options"></chart>
        </div>
      </article>
    </div>
  </div>
</template>

<script>
import Chartist from 'vue-bulma-chartist/src/Chartist.vue'

export default {
  components: {
    chart:Chartist
  },

  data () {
    return {
      data: {
        labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
        series: [
          [12, 9, 7, 8, 5],
          [2, 1, 3.5, 7, 3],
          [1, 3, 4, 5, 6]
        ]
      },
      options: {
        fullWidth: true,
        chartPadding: {
          right: 40
        }
      }
    }
  }
}
/*import Vue from 'vue'
import { Bar } from 'vue-chartjs'

export default {
  extends: {Bar},
  mounted () {
    // Overwriting base render method with actual data.
    this.renderChart({
      labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
      datasets: [
        {
          label: 'GitHub Commits',
          backgroundColor: '#f87979',
          data: [40, 20, 12, 39, 10, 40, 39, 80, 40, 20, 12, 11]
        }
      ]
    })
  }
}*/
</script>
