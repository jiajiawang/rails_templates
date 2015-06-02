#
# Gemfile
#

# app configuration
gem 'figaro'

gem_group :development do
  gem 'better_errors'

  # help to kill N+1 queries and unused eager loading
  gem 'bullet'

  # Mutes assets pipeline log messages
  gem 'quiet_assets'

  # Profiler
  gem 'rack-mini-profiler'

  # Use capistrano for deployment
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rails', '~> 1.1.1'
  gem 'capistrano-rbenv', github: 'capistrano/rbenv'
  gem 'capistrano-unicorn-nginx', '~> 3.1.0'
  gem 'capistrano-safe-deploy-to', '~> 1.1.1'

  # route cleaning
  gem 'traceroute'

  # security analysis
  gem 'brakeman', require: false

  # code analyzer
  gem 'rails_best_practices', require: false
  gem 'rubocop', require: false
  gem 'rubycritic', require: false
end

gem_group :development, :test do
  # Use rspec as test framework
  gem 'rspec', '~> 3.2.0'
  gem 'rspec-rails', '~> 3.2.1'
  gem 'rspec-its', '~> 1.2.0'
  gem 'guard-rspec', '~> 4.5.0', require: false

  gem 'shoulda-matchers'
  gem 'shoulda-callback-matchers', '~> 1.0'

  gem 'factory_girl_rails'

  # Fast faker
  gem 'ffaker'
end

gem_group :test do
  gem 'poltergeist'
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'terminal-notifier-guard'
  gem 'launchy'
  gem 'database_cleaner'
end

