class PostsController < ApplicationController
  before_action :authenticate_user!


  def index
      # @posts = Post.all
  end

    def show
    end

    def new 
      # @post = Post.new
    end

    def edit
    end
end
    # def create
    #   @post = Post.new(post_params)
    # end

    # def update
    # end

    # def destroy
    # end

    # private

    # def set_post
    #   @post = Post.find(params[:id])
    # end

    # def post_params
    #   params.require(:post).permit(:name, :post_image)
    # end
