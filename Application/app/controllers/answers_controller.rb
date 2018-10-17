class AnswersController < ApplicationController
    # Use Knock to make sure the current_user is authenticated before completing request.
    before_action :authenticate_user,  only: [:index, :current, :update]
    before_action :authorize_as_admin, only: [:destroy]
    before_action :authorize,          only: [:update]

    # para GET
    def index
      #answers = Answer.all
      # using pagiante muestra 10 registros por paginate
      # date es un scope declarado en el modelo answer.rb
      answers = Answer.all.paginate(page: params[:page],per_page: 10)
      render json:answers, status:200
    end

    # para SHOW
    def show
      answer = Answer.find(params[:id])
      render json: answer, status:200
    end

    # Para POST
    def create
        answer = Answer.new(params_answer)
        if answer.save
            render json:answer, status:201
        else
            render json:answer.errors, status: :unprocessable_entity
        end
    end

    # para DELETE
    def destroy
        answer = Answer.find(params[:id])
        answer.destroy
        render json: answer, status: 200
    end

    #para PUT o PATCH
    def update
        answer = Answer.find(params[:id])
        if answer.update(params_answer)
            render json: answer, status: 200
        else
            render json: answer.errors, status: 422
        end

    end

    def params_answer
        params.permit(:description, :qualification, :date, :user_id, :question_id)
    end
end
