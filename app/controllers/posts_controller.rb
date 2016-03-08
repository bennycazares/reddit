class PostsController < ApplicationController
  def index
  @posts = Post.all.order("vote_count desc")
  end

  def upvote
    @post = Post.find params[:id]
    @post.update vote_count: (@post.vote_count + 1)
    redirect_to root_path
  end

  def downvote
  @post = Post.find params[:id]
  @post.update vote_count: (@post.vote_count - 1)
  redirect_to root_path
  end

  def detail
  @post = Post.find params[:id]
  @post.save

  @comment = Comment.new
  @comment.post = @post
  end

  def new
   @post = Post.new
  end

  def edit
     @post = Post.find_by id: params[:id]
   end

   def update
     #get object
     @post = Post.find_by id: params[:id]
     #set fields
     @post.title = params[:post][:title]
     # save and handle redirect
     if @post.save
       redirect_to post_path(id: @post.id)
     else
       render :edit
     end
   end

   def delete
     @post = post.find_by id: params[:id]
     @post.destroy
     redirect_to post_path
   end


  def create
   @post = Post.new params.require(:post).permit(:url, :title)
   if @post.save
     redirect_to root_path
   else
     render :new
   end
end


  def create_comment

    # get the record
    @post = Post.find_by id: params[:id]
    @comment = Comment.new

    @comment.comment_text = params[:comment][:comment_text]
    @comment.post_id = @post.id
    # save it
    if @comment.save
      redirect_to detail_post_path(id: @post.id)
    else
      render :show
    end
    # redirect or render
  end
end
