class ApplicationController < ActionController::API
    # Incluir knock en la aplicación
  	include Knock::Authenticable
    
end
