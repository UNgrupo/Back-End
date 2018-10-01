class UsersController < ApplicationController

    # para GET
    def index
       users = User.all
       render json:users, status:200
    end

    # para SHOW
    def show
       user = User.find(params[:idUser])
       respond_to do |format|
           format.json {render json: user, status:200}
       end
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
       user = User.find(user[:id])
       user.destroy
       respond_to do |format|
           format.json {render json: user, status: 200}
       end
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
       params.permit(:Name, :idUser)
   end

end
