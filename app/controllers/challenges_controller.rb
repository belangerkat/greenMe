class ChallengesController < ApplicationController
    def index
        @challenges = Challenge.all
        render json: @challenges, include:[:duration, :difficulty]
    end
    def show
        @challenge = Challenge.find params[:id]
        render json: @challenge, include:[:duration, :difficulty]
    end
    def create
        @challenge = Challenge.new(challenge_params)
        if @challenge.save
            render json: {message: "Challenge created!", challenge: @challenge}
        else
            render json: @challenge.errors.messages
        end
    end

    private
    def challenge_params
        params.require(:challenge).permit([:definition, :difficulty_id, :duration_id])
    end
end
