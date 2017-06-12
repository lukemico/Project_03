class UsersController < ApplicationController
  before_action :check_if_logged_out, only:[:new, :create]

  before_action :check_if_logged_in, only: [:edit, :update, :show]

  before_action :check_if_same_user, only: [:show, :edit]
  # before_action :authorize_user, :except => [:index]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "New user was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "Your account was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully deleted." }
      format.json { head :no_content }
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
  def set_user
      @user = User.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  end

  def check_if_logged_out
    if(@current_user)
      flash[:error] = "You are already logged in."
      redirect_to(user_path(session[:user_id]))
    end
  end

  def check_if_logged_in
    if(!@current_user)
      flash[:error] = "You need to be logged in."
      redirect_to("/login")
    end
  end

  def check_if_same_user
    if(@current_user.id != params["id"].to_i)
      flash[:error] = "You cannot visit that page."
      redirect_to(user_path(@current_user))
    end
  end
