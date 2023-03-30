class UsersController < ApplicationController

    def show
        render json: current_user
    end

    def destroy
        current_user.destroy
        head :no_content
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def update
        user = current_user.update!(user_params)
        render json: user, status: :accepted
    end

    private

    def user_params
        params.permit(:name, :email, :password, :password_confirmation, :image, :id)
    end
end
