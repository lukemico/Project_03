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
      redirect_to insta
    else
      render :new # Show the Sign Up form again
    end
  end

  def edit
    @user = User.find(params[:id])
  end

def update
    @user = User.find_by id: params[:id]
    if @user.update (user_params)
      redirect_to @user
    else
      render :edit
    end
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

    def instagram
      code = params[:code]


    #  'https://api.instagram.com/oauth/authorize/?client_id=ccbcf2506db24fc4a6338955edf5d4a7&redirect_uri=https://sheltered-atoll-46544.herokuapp.com&response_type=code'
    'https://api.instagram.com/oauth/authorize/?client_id=ccbcf2506db24fc4a6338955edf5d4a7&redirect_uri=http://localhost:3000/posts&response_type=code'
  end
    # end

    def check_if_logged_in
      unless @current_user
        flash[:error] = "You need to be logged in for that"
        redirect_to "/login"
      end
    end
end
