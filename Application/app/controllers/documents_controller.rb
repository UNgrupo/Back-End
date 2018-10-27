class DocumentsController < ApplicationController

    before_action :authenticate_user
    # para GET
    def index
       document = Document.all.paginate(page: params[:page],per_page: 10)
       render json:document, status:200
    end

    # para GET/:id
    def show
       document = Document.find(params[:id])
       render json: document, status:200
   end
   # Para POST
   def create
      document = Document.new(params_document)
      if document.save
          render json:document, status:201
      else
          render json:document.errors, status: :unprocessable_entity
      end
  end

   # para DELETE
   def destroy
       document = Document.find(params[:id])
       document.destroy
       render json: document, status: 200
   end

   #para PUT o PATCH
   def update
       document = Document.find(params[:id])
       if document.update(params_document)
           render json: document, status: 200
       else
           render json: document.errors, status: 422
       end

   end

   def params_document
       params.require(:document).permit(:title, :user_id, :question_id)
   end

end
