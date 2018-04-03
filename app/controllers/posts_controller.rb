class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :replace]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.order(created_at: :desc)


    render json: @posts, each_serializer: PostSerializer, status: :ok


  end

  # GET /posts/1
  # GET /posts/1.json
  def show

    render json: @post, status: :ok

  end
  # GET /posts/new
  def new

  end

  def replace
    if params[:id] && params[:title]&& params[:subtitle]&&params[:body]&&params[:created_at]
      if @post.update(post_params)
        render json: @post, status: :ok
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    else
      render json: { error:"Must have all parameters to PUT"}
    end
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update

    if @post.update(post_params)
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :unprocessable_entity

    end


  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy

    @post.destroy
    render json: @post, status: :ok

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :subtitle, :body)
    end
end
