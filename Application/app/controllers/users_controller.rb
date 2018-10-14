class UsersController < ApplicationController

    # para GET
    def index
       users = User.all.paginate(page: params[:page],per_page: 20)
       render json:users, status:200
       #render json:users, status:200
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

   def params_user
       params.permit(:name,:password, :level, :reputation, :role, :number_of_followers, :photo)
   end

end
