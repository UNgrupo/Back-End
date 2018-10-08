class TopicsController < ApplicationController
  # para GET
  def index
    topics = Topic.all
    render json:topics, status:200
  end

  # para SHOW
  def show
    topic = Topic.find(params[:id_topic])
    respond_to do |format|
       format.json {render json:topic , status:200}
    end
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
      topic = Topic.find(params[:id_topic])
      topic.destroy
      respond_to do |format|
          format.json {render json: topic, status: 200}
      end
  end

  #para PUT o PATCH
  def update
      topic = Topic.find(params[:id_topic])
      if topic.update(params_topic)
          render json: topic, status: 200
      else
          render json: topic.errors, status: 422
      end

  end

  def params_topic
      params.permit(:id_topic, :name, :subject)
  end
end
