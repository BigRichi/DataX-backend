class RocketsController < ApplicationController

    def index
        rockets = Rocket.all
        render json: rockets
    end

    def show 
        rocket = Rocket.find(params[:id])
        render json: rocket
    end
end
