class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
end

def home
end
