source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use dotenv to keep database username and password separate and user-changeable
gem 'dotenv-rails'

# Use to compile SCSS stylesheets
gem 'sass-rails', '~> 5.0'
# Use to compile CoffeeScript code
gem 'coffee-rails', '~> 4.2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', '~> 0.12.3'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', '~> 0.4.0'
# Use will_paginate to paginate API requests (20 entries per "page", for example)
gem 'will_paginate', '~> 3.1.0'
# Use Gaffe to easily add custom error pages to the app
gem 'gaffe', '~> 1.2.0'
# Use JsRoutes to avoid issues with different relative base URLs when accessing the API endpoints
gem 'js-routes', '~> 1.3.0'

# Use Bootstrap for SASS
gem 'bootstrap-sass', '3.3.0.0'
# Use SB Admin 2 rails gem to theme the app
gem 'bootstrap_sb_admin_base_v2', '~> 0.3.0'
# Use jQuery as a JavaScript library
gem 'jquery-rails', '~> 4.3.0'
# Use React as a JavaScript library
gem 'react-rails', '~> 2.2.0'
# Use Lodash as a JavaScript library
gem 'lodash-rails', '~> 4.17.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'pry', require: 'pry'
  gem 'byebug', platform: :mri
  # Use Puma for serving in development
  gem 'puma', '~> 3.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.3.10'
end

group :production do
  # Use Passenger for serving in production
  gem 'passenger', '~> 5.0'
  # Use PostgreSQL as the database for Active Record
  gem 'pg', '~> 0.18'
end

# Use jQuery DataTables for table functionality such as searching
gem 'jquery-datatables', '~> 1.10.0'
# Use SweetAlert2 to make nice alert boxes
gem 'rails-assets-sweetalert2', source: 'https://rails-assets.org'
# Use SweetAlert2 Rails gem to override data-confirm with Sweet Alert
gem 'sweet-alert2-rails'
# Use Ladda for fancy progress buttons
gem 'ladda-rails'

# Use Simple OAuth to build and verify headers
gem 'simple_oauth', '0.2.0'
# Use IMS-LTI and sample Rails LTI app to add LTI features
gem 'ims-lti', '2.1.2'
gem 'rails_lti2_provider', git: 'https://github.com/jacobprudhomme/rails_lti2_provider.git', ref: 'c58cd008e12ad22db183a59d89898f2ebccd8cdf'
#gem 'rails_lti2_provider', git: 'https://github.com/blindsidenetworks/rails_lti2_provider.git', ref: 'd350174fafc323670ec8bb5ca652d9753841f5e7'

# Use Shrine for file uploads
gem 'shrine', '~> 2.6.0'
# Use AWS SDK for uploading to Amazon S3
#gem 'aws-sdk'
