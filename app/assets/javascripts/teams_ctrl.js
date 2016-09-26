$(document).on('ready page:change', function() {
  new Vue({
    el: '#new-team-form',
    data: {
      name: "",
      teams: [],
      players: []
    },
    ready: function() {
      $.get('/api/v1/teams.json', function(result) {
        this.teams = result.map(function(team) {
          return team;
        });
      }.bind(this));
    },
    methods: {
      saveTeam: function(name) {
        var params = {
          name: name,
          players: JSON.stringify(this.players) // converts params to array of arrays
        };
        $.post('/api/v1/teams.json', params).done(function(result) {
          console.log(params);
          window.location = "/teams/" + result.id;
        }.bind(this));
      },
      addPlayer: function() {
        this.players.push({
          name: '',
          position: '',
        })
      },
    }
  })
})