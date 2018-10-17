class SubjectsController < ApplicationController
    # Use Knock to make sure the current_user is authenticated before completing request.
    before_action :authenticate_user,  only: [:index, :current, :update]
    before_action :authorize_as_admin, only: [:destroy]
    before_action :authorize,          only: [:update]

  # para GET
  def index
    subjects = Subject.all.paginate(page: params[:page],per_page: 10)
    render json:subjects, status:200
  end

  # para GET/:id
  def show
    subject = Subject.find(params[:id])
    render json:subject , status:200
  end

  # Para POST
  def create
      subject = Subject.new(params_subject)
      if subject.save
          render json:subject, status:201
      else
          render json:subject.errors, status: :unprocessable_entity
      end
  end

  # para DELETE
  def destroy
      subject = Subject.find(params[:id])
      subject.destroy
      render json: subject, status: 200
  end

  #para PUT o PATCH
  def update
      subject = Subject.find(params[:id])
      if subject.update(params_subject)
          render json: subject, status: 200
      else
          render json: subject.errors, status: 422
      end

  end

  def params_subject
      params.permit(:name,:number_of_topics)
  end
end
