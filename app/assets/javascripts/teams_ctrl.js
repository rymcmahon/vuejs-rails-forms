new Vue({
  el: '#new-team-form',
  data: {
    name: "",
    team: [],
    players: []
  },
  methods: {
    saveTeam: function(name) {
      var params = {
        name: name,
        players: JSON.stringify(this.players) // converts params to array of arrays
      };
      $.post('/api/v1/teams.json', params).done(function(result) {
        console.log(params);
        this.name = '';
      }.bind(this));
    },
    addPlayer: function() {
      this.players.push({
        name: '',
        position: '',
      })
    }
  }
})