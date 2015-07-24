source 'https://rubygems.org'
ruby '2.2.1'

gem 'rails',                   '4.2.0'
gem 'pg'
gem 'slim'
gem 'unicorn'
gem 'friendly_id'
gem 'resque'
gem 'activeadmin', '~> 1.0.0.pre1'
gem 'devise'
gem 'omniauth-facebook'
gem 'carrierwave'
gem 'mini_magick'
gem 'fog'

# external services
gem 'newrelic_rpm'
gem 'sentry-raven'

# gems to help in rails 4 transition
gem 'protected_attributes'
gem 'rails-observers'

# assets
gem 'sass-rails', '~> 5.0'
gem "compass-rails", github: "Compass/compass-rails", branch: "master"
gem 'uglifier', '~> 2.7.1'
gem 'font_assets'
gem 'modernizr-rails'
gem 'selectivizr-rails'
# compass and plugins
gem 'compass-normalize'
gem 'singularitygs'
gem 'singularity-extras'

gem 'oily_png'
gem 'color-schemer'
gem 'toolkit'


group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'timecop'
  gem 'email_spec'
end

group :development do
  gem 'foreman'
  gem 'thin'
  gem 'rails-boilerplate'
  gem 'magic_encoding'
  gem 'html2slim'
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'rb-fsevent', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'rack-mini-profiler'  
end

group :production do
  gem 'heroku-deflater'
  gem 'rails_12factor'
end

