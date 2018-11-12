class UsersController < ApplicationController

    #before_action :authenticate_user, only: [:index,:show,:destroy,:update]

    # para GET
    def index
       #@users = User.all.paginate(page: params[:page],per_page: 20)
       @users = User.all
       render json: @users, status:200
       #respond_to do |format|
          # Muestra los usuarios en formato JSON
       #    format.json { render :json => @users }
          # Genera un reporte en pdf con todos los usuarios de la db
       #    format.pdf {render template: 'users/reporte', pdf: 'reporte' }
       #end
    end

    # para GET/:id
    def show
       user = User.find(params[:id])
       render json: user, status:200
    end

   # Para POST
   def create
      user = User.new(params_user)
      if user.save
          render json:user, status:201
      else
          render json:user.errors, status: :unprocessable_entity
      end
  end

   # para DELETE
   def destroy
       user = User.find(params[:id])
       user.destroy
       render json: user, status: 200
   end

   #para PUT o PATCH
   def update
       user = User.find(params[:id])
       if user.update(params_user)
           render json: user, status: 200
       else
           render json: user.errors, status: 422
       end

   end

   # informacion de un usuario
   def usern
      user = User.username(params[:usern])
      render json: user, status: 200
   end

   def params_user
       params.require(:user).permit(:name,:email,:usern,:password,:password_confirmation, :level, :reputation, :role, :number_of_follower,:photo)
       #params.require(:user).permit(:name,:email,:usern,:password, :level, :reputation, :role, :number_of_follower,:photo)
   end

end
