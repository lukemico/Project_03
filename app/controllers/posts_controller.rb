class PostsController < ApplicationController
  before_action :authorise, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params["id"])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = @current_user

      respond_to do |format|
        if @post.save
          format.html { redirect_to @post, notice: 'Post was successfully created.' }
          format.json { render :show, status: :created, location: @post }
        else
          format.html { render :new }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
      @post = Post.find_by id: params[:id]
      if @post.update (post_params)
        redirect_to @post
      else
        render :edit
      end
  end

  def destroy
    @post = Post.find_by(id: params["id"])
    @post.destroy
    respond_to do |format|
    format.html { redirect_to posts_url, notice: "Post was successfully deleted." }
    format.json { head :no_content }
    end
end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end

    def authorise
      unless @current_user
        flash[:error] = "You need to be logged in for that"
        redirect_to "/login"
      end
    end
end
