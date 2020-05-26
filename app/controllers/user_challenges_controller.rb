class UserChallengesController < ApplicationController
    def index
        @user_challenges = UserChallenge.all
        render json: @user_challenges, include:[:user, :challenge]
    end
    def show
        @user_challenge = UserChallenge.find params[:id]
        render json: @user_challenge, include:[:user, :challenge]
    end
    def create
        UserChallenge.create(user_id: params[:user_id], challenge_id: params[:challenge_id])
        redirect_to 'http://localhost:3001/'
    end
end
