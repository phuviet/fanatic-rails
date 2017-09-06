class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]
  before_action :perform_authorization, only: [:show, :create, :update]

  # GET /comments
  def index
    @comments = Comment.where(product_id: params[:id])

    render json: @comments
  end

  # POST /comments
  def create
    binding.pry
    comment = Comment.create(
      title: params[:title],
      content: params[:content],
      user_id: current_user.id,
      product_id: params[:product_id]
    )
    render json: comment, status: :created
    binding.pry
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.user.id == current_user.id
      if @comment.update(comment_params)
        render json: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    else
      render json: { error: 'Unauthorize' }, status: :not_acceptable
    end
  end

  # DELETE /comments/1
  def destroy
    if @comment.user.id == current_user.id
      @comment.destroy
    else
      render json: { error: 'Unauthorize' }, status: :not_acceptable
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:title, :content)
    end
  end
