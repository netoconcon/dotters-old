class AthletesController < ApplicationController
  def index
    @athletes = Athlete.all
  end

  def show
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new
  end

  def create
    @athlete = Athlete.new(athlete_params)
    if @athlete.save
      redirect_to team_path(@team)
    else
      render 'new'
    end
  end

  def edit
    @athlete = Athlete.find(params[:id])
  end

  def update
    @athlete = Athlete.find(params[:id])
    @athlete.update(athlete_params)
    redirect_to teams_path(@team)
  end

  def destroy
    @athlete = Athlete.find(params[:id])
    @athlete.destroy
    redirect_to team_path(@team)
  end

  private

  def athlete_params
    params.require(:athlete).permit(:name, :job1, :job2, :job3)
  end
end
