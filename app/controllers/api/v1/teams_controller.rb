class Api::V1::TeamsController < ApplicationController
  def create
    team = Team.create(
      name: params[:name]
    )
    players = JSON.parse(params[:players])
    players.each do |player|
      team.players.create(
        name: player["name"],
        position: player["position"]
      )
    end
  end
end