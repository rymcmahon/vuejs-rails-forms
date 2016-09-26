class Api::V1::TeamsController < ApplicationController
  def index
    @teams = Team.all
    render 'index.json.jbuilder'
  end

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

  def show
    @team = Team.find(params[:id])
    render 'show.json.jbuilder'
  end
end