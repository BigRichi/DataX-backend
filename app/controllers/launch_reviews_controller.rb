class LaunchReviewsController < ApplicationController

    def index
        launch_review = LaunchReview.all
        render json: launch_review
    end

    def show 
        launch_review = LaunchReview.find(params[:id])
        render json: launch_review
    end

    def create
        new_review = LaunchReview.create(launch_id: params[:launch_id], reviewer: params[:reviewer], present_at_launch: params[:present_at_launch], comment: params[:comment])

        launch = Launch.find(params[:launch_id])
        
        render json: launch
    end 

end
