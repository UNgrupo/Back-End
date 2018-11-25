source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
#gem 'faker', '~> 1.6', '>= 1.6.6'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'pg', '~> 0.18.4'
gem 'annotate'
# paginacion
gem 'will_paginate', '~> 3.1.0'

#generacion de reportes PDF
gem 'wicked_pdf'
# html --> PDF
gem 'wkhtmltopdf-binary'

#realizar peticiones desde el backEnd
gem 'httparty', '~> 0.13.7'

# Active Job
gem 'redis'
gem 'sidekiq'

# Autenticación con Facebook
gem 'omniauth'
gem 'omniauth-facebook', '1.4.0'

# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'
gem 'rack-cors', require: 'rack/cors'

# Autenticación basada en token
gem 'bcrypt', '~> 3.1.7' # Gema que permite almacenar un hash seguro de las contraseñas de usuarios
gem 'active_model_serializers' # Gema que permite dar formato JSON a los parámetros y datos que deseemos
gem 'knock' # Gema para la autenticación en Rails
gem 'jwt' # Gema para usar JSON Web Token

# subir archivos
#gem "paperclip", "~> 6.0.0"
gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"
gem 'aws-sdk', '~> 2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # despliega el correo en una pestaña del navegador
  gem 'letter_opener'

  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
