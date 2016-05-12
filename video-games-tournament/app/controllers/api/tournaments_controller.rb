class Api::TournamentsController < ApplicationController

  def index
    tournaments = Tournament.all
    render json: tournaments
  end

  def create
    tournament = Tournament.create(tournament_params)
    render json: tournament, status: 201
  end

  def show
    tournament = Tournament.find(params[:id])
    render json: tournament
  end

  def destroy
    tournament = Tournament.find(params[:id])
    tournament.destroy
    render json: tournament
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name)
  end

end
