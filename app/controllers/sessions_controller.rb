class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
      flash[:notice] = "You've signed in."
    else
      redirect_to '/sign_in'
      flash[:alert] = "There was a problem signing in. Please try again."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sign_in'
    flash[:notice] = "You've signed out."
  end

end
