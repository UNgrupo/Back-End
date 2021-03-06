class StatisticsController < ApplicationController

    before_action :authenticate_user
    # para GET
    def index
       #statistics = Statistic.all.paginate(page: params[:page],per_page: 10)
       #@statistics = Statistic.all
       @statistics = Statistic.all
       respond_to do |format|
          # Muestra los usuarios en formato JSON
          format.json { render :json => @statistics }
          # Genera un reporte en pdf con todos los usuarios de la db
          format.pdf {render template: 'statisctics/reporte', pdf: 'reporte' }
       end
       #render json:@statistics, status:200
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

   def user
      statistic = Statistic.user(params[:usern])
      render json: statistic, status:200
   end

   # para filtrar por puntos
   def point
      statistic = Statistic.points(params[:points])
      render json: statistic, status:200
   end

   def question
      statistic = Statistic.question(params[:number_of_questions])
      render json: statistic, status:200
   end

   def answer
      statistic = Statistic.answer(params[:number_of_answers])
      render json: statistic, status:200
   end


   def params_statistic
       params.require(:statistic).permit(:points, :number_of_questions, :number_of_answers, :number_of_best_answers,:user_id)
   end

end
