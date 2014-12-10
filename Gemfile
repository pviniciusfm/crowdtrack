source "https://rubygems.org"

ruby "2.1.2"

gem "coffee-rails"
gem "delayed_job_active_record"
gem "email_validator"
gem "flutie"
gem "high_voltage"
gem "i18n-tasks"
gem "jquery-rails"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "rack-timeout"
gem "rails", "4.1.4"
gem "recipient_interceptor"
#Bootstrap Install
gem "sass-rails", "~> 4.0.3"
gem 'bootstrap-sass', git: 'https://github.com/twbs/bootstrap-sass.git', ref: 'master'
gem 'autoprefixer-rails'

gem "simple_form"
gem "cocoon"
gem "title"
gem "uglifier"
gem "unicorn"
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'better_errors'
gem 'binding_of_caller'
# gem 'sprockets_better_errors'
gem 'jquery-datatables-rails', '~> 3.0.0'
gem 'rqrcode'
gem 'ranked-model'

group :development do
  gem "spring"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "awesome_print"
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem "rspec-rails", "~> 3.0.0"
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "newrelic_rpm", ">= 3.7.3"
  gem "rails_12factor"
end
