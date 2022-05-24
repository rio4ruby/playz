# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# gem 'therubyracer'

# specify version due to security warning on github
gem 'nokogiri', '~> 1.13.6'
gem 'loofah', '~> 2.3.1'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Devise for authentication
gem 'devise'

# Use HAML
gem 'haml'
gem 'haml-rails'

# Use sunspot/solr
gem 'progress_bar'
gem 'sunspot_rails'
gem 'sunspot_solr'

# Use twitter bootstrap
gem 'bootstrap', '~> 4.3'
gem 'bootstrap_form'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

# For paging
gem 'kaminari'

# to determine image content types
gem 'ruby-filemagic'

gem 'acts_as_list'
gem 'ancestry'
gem 'rio', '>=0.6.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Mina for deployment
gem 'mina'

gem 'listen', '~> 3.0.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  # Use RSpec
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  # Use RSpec
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  #gem 'mp3info'
end
  gem 'mp3info'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
