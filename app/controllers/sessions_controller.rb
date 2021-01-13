class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_email(params[:email])
    user.email = format_email(user.email)
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def format_email(input_email)
    input_email = input_email.strip # Remove White space and RegEx
    input_email.downcase! # Make lowercase
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
