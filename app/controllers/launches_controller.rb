class LaunchesController < ApplicationController

    def index
        launch = Launch.all
        render json: launch
    end

    def show 
        launch = Launch.find(params[:id])
        render json: launch
    end
end
