class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    if user_signed_in?
      redirect_to sightings_path
    else
      redirect_to user_session_path
    end
  end
end
