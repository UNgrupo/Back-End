class StatisticsController < ApplicationController
    # Use Knock to make sure the current_user is authenticated before completing request.
    before_action :authenticate_user,  only: [:index, :current, :update]
    before_action :authorize_as_admin, only: [:destroy]
    before_action :authorize,          only: [:update]

    # para GET
    def index
       statistics = Statistic.all.paginate(page: params[:page],per_page: 10)
       render json:statistics, status:200
    end

    # para GET/:id
    def show
       statistic = Statistic.find(params[:id])
       render json: statistic, status:200
   end

   # Para POST
   def create
      statistic = Statistic.new(params_statistic)
      if statistic.save
          render json:statistic, status:201
      else
          render json:statistic.errors, status: :unprocessable_entity
      end
  end

   # para DELETE
   def destroy
       statistic = Statistic.find(statistic[:id_statistic])
       statistic.destroy
       render json: statistic, status: 200
   end

   #para PUT o PATCH
   def update
       statistic = Statistic.find(params[:id_statistic])
       if statistic.update(params_statistic)
           render json: statistic, status: 200
       else
           render json: statistic.errors, status: 422
       end

   end

   def params_statistic
       params.permit(:points, :number_of_questions, :number_of_answers, :number_of_best_answers,:user_id)
   end

end
