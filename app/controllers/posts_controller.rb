class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.save 
  end

  def update
    @post = Post.new
    @post["author"] = params["post"]["author"]
    @post["body"] = params["post"]["body"]
    @post["image"] = params["post"]["image"]
    @post.save
    redirect_to "/posts"
  end

end
