source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'capistrano', '~> 3.11'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-rails', '~> 1.4'
gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'
gem 'font-awesome-rails'
gem 'gravtastic'
gem 'importmap-rails'
gem 'io-wait', '0.1.0'
gem 'jbuilder'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.1'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'strscan', '3.0.0'
gem 'turbo-rails'

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
