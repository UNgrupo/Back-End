class CommentsController < ApplicationController
  # para GET
  def index
    comments = Comment.all
    render json:comments, status:200
  end

  # para SHOW
  def show
    comment = Comment.find(params[:idComment])
    respond_to do |format|
       format.json {render json: comment, status:200}
    end
  end

  # Para POST
  def create
      comment = Comment.new(params_commet)
      if comment.save
          render json:comment, status:201
      else
          render json:comment.errors, status: :unprocessable_entity
      end
  end

  # para DELETE
  def destroy
      comment = Comment.find(params[:idComment])
      comment.destroy
      respond_to do |format|
          format.json {render json: comment, status: 200}
      end
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

  def params_answer
      params.permit(:idComment)
  end
end
