class HomeController < ApplicationController
  def create
    @post = Post.new(post_params)
  
    if @post.save
      redirect_to home_path, notice: 'Post was successfully created.'
    else
      flash[:alert] = @post.errors.full_messages.join(', ')
      render :new
    end
  end  

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:body, :image)
  end
end
