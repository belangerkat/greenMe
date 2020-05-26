class DurationsController < ApplicationController
    def index
        @durations = Duration.all
        render json: @durations
    end
    def show
        @duration = Duration.find params[:id]
        render json: @duration
    end
end
