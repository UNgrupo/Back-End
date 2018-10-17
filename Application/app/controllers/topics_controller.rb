class TopicsController < ApplicationController
    # Use Knock to make sure the current_user is authenticated before completing request.
    before_action :authenticate_user,  only: [:index, :current, :update]
    before_action :authorize_as_admin, only: [:destroy]
    before_action :authorize,          only: [:update]

  # para GET
  def index
    topics = Topic.all.paginate(page: params[:page],per_page: 10)
    render json:topics, status:200
  end

  # para GET/:id
  def show
    topic = Topic.find(params[:id])
    render json:topic , status:200
  end

  # Para POST
  def create
      topic = Topic.new(params_topic)
      if topic.save
          render json:topic, status:201
      else
          render json:topic.errors, status: :unprocessable_entity
      end
  end

  # para DELETE
  def destroy
      topic = Topic.find(params[:id])
      topic.destroy
      render json: topic, status: 200
  end

  #para PUT o PATCH
  def update
      topic = Topic.find(params[:id])
      if topic.update(params_topic)
          render json: topic, status: 200
      else
          render json: topic.errors, status: 422
      end

  end

  def params_topic
      params.permit(:name, :subject_id)
  end
end
