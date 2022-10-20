class MainController < ApplicationController
  def login
  end

  def create
    if (params[:username] == 'tanasak')
      redirect_to controller: 'students', action: 'index'
      session[:logged_in] == true
    else
      redirect_to action: 'login'
    end
  end
end
