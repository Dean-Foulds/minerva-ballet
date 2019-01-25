source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
# ruby '2.3.1'
gem 'rails', '~> 5.0.7', '>= 5.0.7.1'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'figaro'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'actionmailer', '~> 5.0', '>= 5.0.0.1'
gem "letter_opener", group: :development
gem 'dotenv-rails', groups: [:development, :test]
gem 'postmark-rails'
gem 'cookies_eu'
gem 'haml-rails'
gem 'postmark-rails'
gem 'gibbon'
gem 'binding_of_caller'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'administrate'
gem 'bourbon'
gem 'devise'
gem 'foundation-rails', '~> 5.5'
gem 'high_voltage'
gem 'pg', '~> 0.18'
gem 'pundit'
gem 'simple_form'
gem 'unicorn'
gem 'unicorn-rails'
group :development do
  gem 'better_errors'
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end
group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end
