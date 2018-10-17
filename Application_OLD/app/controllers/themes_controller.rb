class ThemesController < ApplicationController
  # para GET
  def index
    themes = Theme.all
    render json:themes, status:200
  end

  # para SHOW
  def show
    theme = Theme.find(params[:idTheme])
    respond_to do |format|
       format.json {render json:theme , status:200}
    end
  end

  # Para POST
  def create
      theme = Theme.new(params_theme)
      if theme.save
          render json:theme, status:201
      else
          render json:theme.errors, status: :unprocessable_entity
      end
  end

  # para DELETE
  def destroy
      theme = Theme.find(params[:idTheme])
      theme.destroy
      respond_to do |format|
          format.json {render json: theme, status: 200}
      end
  end

  #para PUT o PATCH
  def update
      theme = Theme.find(params[:idTheme])
      if theme.update(params_theme)
          render json: theme, status: 200
      else
          render json: theme.errors, status: 422
      end

  end

  def params_theme
      params.permit(:idTheme, :Name)
  end
end
