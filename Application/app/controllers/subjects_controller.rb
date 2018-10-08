class SubjectsController < ApplicationController
  # para GET
  def index
    subjects = Subject.all
    render json:subjects, status:200
  end

  # para SHOW
  def show
    subject = Subject.find(params[:id_subject])
    respond_to do |format|
       format.json {render json:subject , status:200}
    end
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
      subject = Subject.find(params[:id_subject])
      subject.destroy
      respond_to do |format|
          format.json {render json: subject, status: 200}
      end
  end

  #para PUT o PATCH
  def update
      subject = Subject.find(params[:id_subject])
      if subject.update(params_subject)
          render json: subject, status: 200
      else
          render json: subject.errors, status: 422
      end

  end

  def params_subject
      params.permit(:id_subject, :name)
  end
end
