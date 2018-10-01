class QuestionsController < ApplicationController
  # para GET
  def index
    questions = Question.all
    render json:questions, status:200
  end

  # para SHOW
  def show
    question = Question.find(params[:idComment])
    respond_to do |format|
       format.json {render json: question, status:200}
    end
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
      question = Question.find(params[:idQuestion])
      question.destroy
      respond_to do |format|
          format.json {render json: question, status: 200}
      end
  end

  #para PUT o PATCH
  def update
      question = Question.find(params[:idQuestion])
      if question.update(params_question)
          render json: question, status: 200
      else
          render json: question.errors, status: 422
      end

  end

  def params_answer
      params.permit(:idQuestion, :Title)
  end
end
