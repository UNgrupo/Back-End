class ApplicationController < ActionController::API
    # Incluir knock en la aplicación
    include Knock::Authenticable
    include ActionController::MimeResponds
    include ActionController::RequestForgeryProtection


    #protect_from_forgery with: :null_session
    protect_from_forgery unless: -> { request.format.json? }

    # Aunteticacion con Facebook
    private
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
end
