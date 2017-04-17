class SessionsController < ApplicationController
  def new
  end

  def create
    session[:current_email] = session_email_param
    redirect_to root_path
  end

  def session_email_param
    params.require(:session).require(:email)
  end
end
