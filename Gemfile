source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :development, :test do
	gem 'sqlite3'
	gem 'debugger'
	gem 'capybara'
	gem 'haml-rails'
end

group :test do
	gem 'cucumber-rails', :require => false
	gem 'cucumber-rails-training-wheels'
	gem 'database_cleaner'
	gem 'rspec-rails'
	gem 'autotest'
end

group :production do
	gem 'pg'
	gem 'rack-www'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem "sass_rails_patch", "~> 0.0.1"
end

gem 'thin'
gem 'haml'
gem 'turbolinks'
gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
