class SessionController < ApplicationController
  before_action :authorise, only: [:new]

  # GET /sessions/new
  def new
  end

  def create
    user = User.find_by :email => params[:email]
  # raise "hell"
  if user.present? && user.authenticate(params[:password])
    session[:user_id] = user.id
    flash[:notice] = "Login successful!"
    redirect_to root_path
  else
    flash[:error] = "The password or email entered was incorrect!"
    # redirect_to session_path
      end
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/1/edit
  def edit
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil
    redirect_to("/login")
  end

  private
  def authorise
    if(@current_user)
      flash[:error] = "You are already logged in."
      redirect_to(user_path(@current_user.id))
    end
  end

end
