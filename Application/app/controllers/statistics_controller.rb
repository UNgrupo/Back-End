class StatisticsController < ApplicationController

    # para GET
    def index
       @statistics = Statistic.all
       #render json:statistics, status:200
    end

    # para SHOW
    def show
       statistic = Statistic.find(params[:id_statistic])
       respond_to do |format|
           format.json {render json: statistic, status:200}
       end
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
       respond_to do |format|
           format.json {render json: statistic, status: 200}
       end
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
       params.permit(:id_statistic, :points, :number_of_questions, :number_of_answers, :number_of_best_answers)
   end

end
