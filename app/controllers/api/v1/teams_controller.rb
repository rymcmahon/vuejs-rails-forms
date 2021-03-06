class Api::V1::TeamsController < ApplicationController
  def create
    @team = Team.new(
      name: params[:name]
    )
    players = JSON.parse(params[:players])
    players.each do |player|
      @team.players.new(
        name: player["name"],
        position: player["position"]
      )
    end
    if @team.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @team.errors.full_messages }, status: 422
    end
  end

  def show
    @team = Team.find(params[:id])
  end
end