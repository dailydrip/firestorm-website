source 'https://rubygems.org'

gem 'middleman', '~> 4.2'
gem 'middleman-autoprefixer', '~> 2.7'
gem 'tzinfo-data', platforms: [:mswin, :mingw, :jruby]
gem 'wdm', '~> 0.1', platforms: [:mswin, :mingw]
gem 'haml'
gem 'sass', '~> 3.4', '>= 3.4.22'
gem 'gravtastic'
gem 'font-awesome-middleman'
gem 'purecss-sass', '~> 0.6.2'
gem 'normalize-scss', '~> 4.2.1'

# Helpers for meta tags
gem 'meta-tags'

group :development, :test do
  gem 'brakeman', require: false
  gem 'byebug'
  gem 'pry'
  gem 'factory_girl_rails'
  gem 'faker', '~> 1.7.1'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
  gem 'stripe-ruby-mock', '~> 2.1.1', require: 'stripe_mock'
  gem 'spinach-rails'
  gem 'wkhtmltopdf-binary-edge', '~> 0.12.4.0' # PDFkit works on env development & test

  # Generate API documentation from request specs
  gem 'rspec_api_documentation'
end

group :test do
  gem 'puffing-billy'
  gem 'thin'
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'launchy', require: false
  gem 'selenium-webdriver'
  gem 'poltergeist'
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'simplecov-json', require: false
  gem 'simplecov-rcov', require: false
end
