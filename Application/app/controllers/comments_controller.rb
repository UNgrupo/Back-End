class CommentsController < ApplicationController
     # Use Knock to make sure the current_user is authenticated before completing request.
     before_action :authenticate_user,  only: [:index, :current, :update]
     before_action :authorize_as_admin, only: [:destroy]
     before_action :authorize,          only: [:update]
 
  # para GET
  def index
    comments = Comment.all.paginate(page: params[:page],per_page: 10)
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
      params.permit(:description, :date, :user_id, :answer_id)
  end
end
