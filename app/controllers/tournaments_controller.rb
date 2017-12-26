class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :enter_tournament, :leave_tournament]
  before_action :set_team, only: [:enter_tournament, :leave_tournament]

  def index
    @tournaments = Tournament.all
  end

  def show; end

  def enter_tournament
    @tournament.teams << @team
    render :refresh_tournament
  end

  def leave_tournament
    @tournament.teams.destroy(@team)
    render :refresh_tournament
  end

  private

  def set_tournament
    @tournament = Tournament.find(params[:id])
  end

  def set_team
    @team = Team.find(params[:team_id])
  end
end