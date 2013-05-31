source 'https://rubygems.org'

gem 'rails', '4.0.0.rc1'
gem 'mysql2'
gem 'unicorn'
gem 'execjs'
gem 'therubyracer'
gem 'puffer', github: 'puffer/puffer'
gem 'puffer_pages', github: 'foxweb/puffer_pages'
gem 'bcrypt-ruby'
gem 'clearance', '1.0.0.rc7'
gem 'ckeditor'
gem 'carrierwave'
gem 'mini_magick'
gem 'slim-rails'
gem 'ruby-prof'
gem 'rack-mini-profiler'
gem 'foreman'
gem 'rails-i18n'

# assets
gem 'sass-rails',   '~> 4.0.0.rc1'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'

# add these gems to help with the transition:
gem 'protected_attributes'
gem 'rails-observers'
gem 'actionpack-page_caching'
gem 'actionpack-action_caching'

group :development do
  gem 'capistrano'
  gem 'rvm-capistrano'
  gem 'capistrano-redmine', require: false
end

group :test do
  gem 'turn', require: false
  gem 'minitest'
end

group :test, :development do
  gem 'terminal-notifier-guard'
  gem 'guard-test'
  gem 'guard-spin'
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'awesome_print'
  gem 'pry-rails'
  gem 'zeus'
end
