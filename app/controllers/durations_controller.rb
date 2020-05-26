class DurationsController < ApplicationController
    def index
        @durations = Duration.all
        render json: @durations, include:[:challenges] 
    end
    def show
        @duration = Duration.find params[:id]
        render json: @duration, include:[:challenges] 
    end
end
