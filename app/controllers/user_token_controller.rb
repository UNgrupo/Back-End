class UserTokenController < Knock::AuthTokenController
    skip_before_action :verify_authenticity_token
    def creation_params
        params.permit(:auth)
    end
end
