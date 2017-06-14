class UsersController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update, :show]
  # before_action :check_if_same_user, only: [:show, :edit]

  def index
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
    if @user.save
      session[:user_id] = @user.id
      redirect_to insta4
    else
      render :new # Show the Sign Up form again
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def get_insta_access_code
    code = params[:code]
    binding.pry
    res = insta3(code)
  end

def update
    @user = User.find_by id: params[:id]
    if @user.update (user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def add_token
    user = User.find_by id: params[:id]
    user.code = params[:accessToken]
    user.save
    render json: { message: "All good" }
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

    def check_if_logged_out
      if @current_user
        flash[:error] = "You are already logged in"
        redirect_to "/users"
      end
    end

    def insta4
      client_id = 'ccbcf2506db24fc4a6338955edf5d4a7'
      redirect_uri = 'http://localhost:3000/posts'

      "https://api.instagram.com/oauth/authorize/?client_id=#{client_id}&redirect_uri=#{redirect_uri}&response_type=token&scope=public_content"
    end

    def instagram
      client_id = 'ccbcf2506db24fc4a6338955edf5d4a7'
      redirect_uri = 'http://localhost:3000/users/insta'
      # redirect_uri = 'https://sheltered-atoll-46544.herokuapp.com/posts'

     "https://api.instagram.com/oauth/authorize/?client_id=#{client_id}&redirect_uri=#{redirect_uri}&response_type=code"
  end

  def instagram2(code)
    client_id = 'ccbcf2506db24fc4a6338955edf5d4a7'
    redirect_uri = 'http://localhost:3000/posts'
    HTTParty.post("https://api.instagram.com/oauth/access_token?client_id=#{client_id}&grant_type=authorization_code&redirect_uri=#{redirect_uri}&code=#{code}")
  end

  def insta3(code)
    client_id = 'ccbcf2506db24fc4a6338955edf5d4a7'
    redirect_uri = 'http://localhost:3000/posts'

    HTTParty.post("https://api.instagram.com/oauth/access_token",
    form: {
      client_id: client_id,
      client_secret: 'dd51ed56dffa47b2a71f82d69b147352',
      grant_type: 'authorization_code',
      redirect_uri: redirect_uri,
      code: code
    }.to_json)
  end

    def check_if_logged_in
      unless @current_user
        flash[:error] = "You need to be logged in for that"
        redirect_to "/login"
      end
    end
end
