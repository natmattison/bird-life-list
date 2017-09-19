class SightingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bird_count = current_user.sightings.select(:bird_id).distinct.count
  end
  
  def new
  end
  
  def create
  end
  
  def destroy
  end
  
  def show
  end
end
