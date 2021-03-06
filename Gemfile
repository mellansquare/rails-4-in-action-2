source 'https://rubygems.org'
ruby "2.3.4"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.6', group: [:development, :test]
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bootstrap-sass'
gem 'carrierwave'
gem 'devise'
gem 'font-awesome-rails'
gem 'pundit'
gem 'simple_form'
gem 'fog-aws'
gem 'bundler', '~> 1.17', '>= 1.17.3'
gem 'searcher', github: 'radar/searcher'
gem "active_model_serializers"
gem 'sinatra'

group :production do
  gem 'pg', '~> 0.20'
  gem 'rails_12factor'
  gem 'puma'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Unicorn as the app server
# gem 'unicorn'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'rspec-rails'
  # Access an IRB console on exception pages or by using <%= console %> in views
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

  gem 'web-console', '~> 2.0', group: :development

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'factory_bot_rails'
  gem 'geckodriver-helper'
  gem 'rubocop-performance'
  gem 'selenium-webdriver'
  gem 'rspec-retry'
end
