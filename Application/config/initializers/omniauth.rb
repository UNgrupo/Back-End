OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1978366042223188', '44a6b09d367ad6de0cfd6b3deae8cbb6' , callback_path: '/auth/facebook/callback'
  #api_key: 2245067805765444
  #secret_key: a20ed59e1cadcdaec6a885a759eb6dd4

end
OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
