source 'https://rubygems.org'

gem 'rails', '4.1.6'
gem 'mysql2'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'therubyracer',  platforms: :ruby

gem 'jquery-rails'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use debugger
# gem 'debugger', group: [:development, :test]

gem "haml"

gem "redis", "~> 3.0.1"
gem "hiredis", "~> 0.4.5"
gem "redis-namespace"

gem "settingslogic"

group :development do
  gem "erb2haml"
  gem "pry"
  gem "debase"
end

group :deployment do
  gem 'capistrano', '~> 3.2.1'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
end
