class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_url(@post)
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to sub_url(@post.sub)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    if @post
      render :edit
    else
      redirect_to new_post_url
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_url(@post)
    else
      render :edit
    end
  end

  def index
    redirect_to subs_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :author_id, sub_ids: [])
  end
end
