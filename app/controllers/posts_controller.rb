class PostsController < ApplicationController

  before_action :set_post, only: [:update, :destroy, :edit, :show]

  def index
    cookies.delete(:username)
    @posts = Post.all
    respond_to do |format|
      format.html
      format.json { render json: @posts }
      format.xml { render xml: @posts }
    end
  end

  def show 
    respond_to do |format|
      format.html
      format.json { render json: @post}
    end
  end

  def edit 
  end 

  def update
    if @post.update(post_params)
    #flash[:success] = "Post modified successfully"
    #flash[:danger] = "Post was successfully updated"
    redirect_to posts_path, flash: {success: "Post modified successfully"}
    else 
      render 'edit'
    end
  end

  def new
    @post = Post.new
  end
  
  def create 
    post = Post.new(post_params)
    if post.valid?
      post.save
      redirect_to post_path(post.id), flash: {success: "Article was successfully createdy"}
    else 
      @post = post
      render 'new'
    end
  end 

  def destroy 
    @post.destroy
    redirect_to posts_path
  end
  
  private

  def set_post 
    @post = Post.find(params[:id])

  end

  def post_params 
    params.require(:post).permit(:name, :content)
  end
  
  

end
  

