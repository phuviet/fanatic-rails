class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.all

    render json: @comments
  end

  # POST /comments
  def create
    # @comment = Comment.new(comment_params)
    if authorize_user
      comment = Comment.comment_includes.create(
        content: params[:content],
        user_id: current_user.id,
        product_id: params[:product_id]
        )
      render json: comment, status: :created
    else
      render json: { error: 'Unauthorize' }, status: :not_found
    end
  end

  # PATCH/PUT /comments/1
  def update
    if authorize_user && @comment.user.id == current_user.id
      if @comment.update(comment_params)
        # binding.pry
        render json: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    else
      render json: { error: 'Unauthorize' }
    end
  end

  # DELETE /comments/1
  def destroy
    if authorize_user && @comment.user.id == current_user.id
      @comment.destroy
    else
      render json: { error: 'Unauthorize' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.comment_includes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
