source 'https://rubygems.org'

#------------------------------------------------------------------------------
# Default

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

#------------------------------------------------------------------------------
# Server

gem "puma"
gem "foreman"

#------------------------------------------------------------------------------
# Database

gem "pg"

#------------------------------------------------------------------------------
# Authentication

gem 'devise'

#------------------------------------------------------------------------------
# Testing frameworks

group :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "capybara"
  gem "database_cleaner"
end

#------------------------------------------------------------------------------
# Background processing

gem "sidekiq"

# This allows us to control Sidekiq through a web panel.
gem "slim"
gem "sinatra", ">= 1.3.0", :require => nil

#------------------------------------------------------------------------------
