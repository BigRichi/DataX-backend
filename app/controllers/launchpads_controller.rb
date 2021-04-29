class LaunchpadsController < ApplicationController

    def index
        launchpads = Launchpad.all
        render json: launchpads
    end

    def show 
        launchpad = Launchpad.find(params[:id])
        render json: launchpad
    end
end
