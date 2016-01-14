class PostsController < ApplicationController
  before_action :authenticate_user!


  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @posts = @user.posts
      @display_name = "#{@user.username}'s"
    else
      @posts = Post.all
      @display_name = "All"
    end
  end

#Having issues with this:
  def show
    @post = Post.find(params[:id])
    @user = User.find(params[:id])
    @posts = @user.posts
  end


  def new 
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to( posts_path )
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to( posts_path )
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to( posts_path )
  end

  private

    # def set_post
    #   @post = Post.find(params[:id])
    # end

    def post_params
      params.require(:post).permit(:caption, :post_image)
    end
end