class DifficultiesController < ApplicationController
    def index
        @difficulties = Difficulty.all
        render json: @difficulties
    end
    def show
        @difficulty = Difficulty.find params[:id]
        render json: @difficulty
    end
end
