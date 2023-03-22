class JoinUhsController < ApplicationController
  def create
    joinUH = JoinUh.create!(joinUh_params)
    render json: joinUh, status: :created
  end

  def destroy
    person = JoinUh.find(params[:id])
    person.destroy
    head :no_content
  end

  private

  def joinUh_params
    params.permit(:user_answer, :the_answer)
  end
end
