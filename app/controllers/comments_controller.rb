class CommentsController < ApplicationController
  before_action :set_post, only: [:index, :create,:show, :update, :destroy]
  before_action :set_comment, only: [:show, :update, :destroy]


  # GET /posts
  # GET /posts.json
  def index
    @comments = @post.comments.order(created_at: :desc)
    render json: @comments, status: :ok
    
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    render json: @comment, status: :ok

  end


  # POST /posts
  # POST /posts.json
  def create
    @comment = @post.comments.new(comment_params)
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update

    if @comment.update(comment_params)
      render json: @comment, status: :ok
    else
      render json: @comment.errors, status: :unprocessable_entity

    end


  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy

    @comment.destroy
    render json: @comment, status: :ok

  end


    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_comment
      @comment = @post.comments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.permit(:comment, :author)
    end
end
