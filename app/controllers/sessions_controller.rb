class SessionsController < ApplicationController
  before_action :authorise, only: [:new]

  # GET /sessions/new
  # def new
  #   @session = Session.new
  # end

  # POST /sessions
  # POST /sessions.json

  def index
    @sessions = session.id
  end


  def create
    email = params["email"]
    password = params["password"]
    user = User.find_by(email: email)
    # user_ip = request.remote_ip

    if(user.present? && user.authenticate(password))
      session[:user_id] = user.id
      flash[:notice] = "Login successful!"
      redirect_to root_path

      # if user.ip_address != user_ip || user.ip_address.empty?
      #   # search by IP if user is present - and get first result
      #   user_location = Geocoder.search( user_ip )[0]
      #   # Assign the user the latitude and longitude returned
      #   user.latitude = user_location.latitude
      #   user.longitude = user_location.longitude
      end

    else
      flash[:login_error] = "The password or email was incorrect."
      redirect_to sessions_path
    end

    def show
      @user = User.find_by(id: params["id"])
      @posts = @user.posts.id
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
