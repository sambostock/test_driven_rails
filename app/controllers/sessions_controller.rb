class SessionsController < ApplicationController
  def new
  end

  def create
    sign_in_as session_email_param
    redirect_to root_path
  end

  def session_email_param
    params.require(:session).require(:email)
  end
end
