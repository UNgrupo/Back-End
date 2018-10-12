class QuestionsController < ApplicationController
  # para GET
  def index
    questions = Question.questdoc.paginate(page: params[:page],per_page: 10)
    render json: questions, status:200
  end

  # para SHOW
  def show
    question = Question.find(params[:id])
    render json: question, status:200
  end

  # Para POST
  def create
      question = Question.new(params_question)
      if question.save
          render json:question, status:201
      else
          render json:question.errors, status: :unprocessable_entity
      end
  end

  # para DELETE
  def destroy
      question = Question.find(params[:id_question])
      question.destroy
      render json: question, status: 200
  end

  #para PUT o PATCH
  def update
      question = Question.find(params[:id_question])
      if question.update(params_question)
          render json: question, status: 200
      else
          render json: question.errors, status: 422
      end

  end

  def params_question
      params.permit(:title, :description, :date, :user_id, :topic_id)
  end
end
