class StatisticsController < ApplicationController

    # para GET
    def index
       statistics = Statistic.numquest.paginate(page: params[:page],per_page: 10)
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
