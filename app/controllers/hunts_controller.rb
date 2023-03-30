class HuntsController < ApplicationController
  def index 
    render json: Hunt.all
  end

  def destroy
    hunt = Hunt.find(params[:id])
    render json: hunt
  end

  def create
    hunt = Hunt.create!(hunt_params)
    render json: hunt, status: :created
  end

  private

  def hunt_params 
    params.permit(:clue, :image, :the_answer)
  end

end
