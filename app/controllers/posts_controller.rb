class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.order(created_at: :desc)

    if @posts
      render json: @posts, each_serializer: PostSerializer

    else
      render json: {error:error.message}, status: :not_found
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    if @post
      render json: {status:'Exitoso', message:'Informacion de noticia', data:@post}, status: :ok
    end
  end
  # GET /posts/new
  def new

  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    if @post.save
      render json: {status: :created,message: 'Guardado Correctamente', data: @post }, status: :created
    else
      render json: {status: 'Error',message: 'Falla, no se guardo correctamente', data: @post.errors }, status: :unprocessable_entity
    end

  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    if @post
      if @post.update(post_params)
        render json: {status: :created,message: 'Actualizado Correctamente', data: @post }, status: :ok
      else
        render json: {status: 'Error',message: 'Falla, no se actualizo correctamente', data: @post.errors }, status: :unprocessable_entity

      end
    end

  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    if @post
      @post.destroy
      render json: {status: "Exito",message: 'Borrado Correctamente', data: @post }, status: :ok
    end
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
