def create
  @post = Post.new(post_params)

  if @post.save
    
  else
    
  end
end

private

def post_params
  params.require(:post).permit(:body, :image)
end
