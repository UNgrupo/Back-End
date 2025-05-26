class CommentsController < ApplicationController

  before_action :authenticate_user
  # para GET
  def index
    #comments = Comment.all.paginate(page: params[:page],per_page: 10)
    comments = Comment.all
    render json:comments, status:200
  end

  # para GET/:id
  def show
    comment = Comment.find(params[:id])
    render json: comment, status:200
  end

  # Para POST
  def create
      comment = Comment.new(params_comment)
      if comment.save
          render json:comment, status:201
      else
          render json:comment.errors, status: :unprocessable_entity
      end
  end

  # para DELETE
  def destroy
      comment = Comment.find(params[:id])
      comment.destroy
      render json: comment, status: 200
  end

  #para PUT o PATCH
  def update
      comment = Comment.find(params[:id])
      if comment.update(params_comment)
          render json: comment, status: 200
      else
          render json: comment.errors, status: 422
      end

  end

  def params_comment
      params.require(:comment).permit(:description, :date, :user_id, :answer_id)
  end
end
