class UsersController < ApplicationController
    before_action :authenticate, only: [:index, :show]

    def index    
        @users = User.all
        render json: @users, include:[:user_challenges]
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include:[:user_challenges]
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: {message: "User created!", user: @user}
        else
            render json: @user.errors.messages
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
      end
    
    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end

