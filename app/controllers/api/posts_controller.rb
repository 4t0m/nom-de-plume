class Api::PostsController < ApplicationController

  def index
    # if query param is wall do this


    # if query param is newsfeed do this
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render :show
    else
      render json: @post.errors.full_messages, status: 422
    end
  end

  def update
    @post = Post.find(params[:post][:id])
    if @post.update(post_params)
      render :show
    else
      render json: ["Cannot update information"], status: 422
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render :show
  end

  def post_params
    params
      .require(:post)
      .permit(:body, :author_id, :host_id, :thumbnail)
  end
end
