OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '2245067805765444', 'a20ed59e1cadcdaec6a885a759eb6dd4' , callback_path: '/auth/facebook/callback'
  #api_key: 2245067805765444
  #secret_key: a20ed59e1cadcdaec6a885a759eb6dd4

end
