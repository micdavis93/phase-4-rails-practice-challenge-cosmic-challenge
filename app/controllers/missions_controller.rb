class MissionsController < ApplicationController

  def index
    scientists = Scientist.all
    render json: scientists
  end

  def show
    scientist = Scientist.find(params[:id])
    if scientist
      render json: scientist
    else
      render json: {error: "Scientist not found"}
    end
  end
end
