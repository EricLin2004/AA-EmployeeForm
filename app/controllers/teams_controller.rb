class TeamsController < ApplicationController
  def new
  	@team = Team.new
  end

  def index
  end

  def create
  	team = Team.new(params[:team])
    if team.save
      flash[:success] = "Team created!"
    else
      flash[:errors] = team.errors.full_messages
    end
    redirect_to teams_url
  end

  def show
  	@team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    team = Team.find(params[:id])
    if team.update_attributes(params[:team])
      flash[:success] = "Team updated!"
      redirect_to teams_url
    else
      flash[:errors] = team.errors.full_messages
      render :edit
    end
  end

  def destroy
  end
end
