source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

gem "rails", "~> 7.0.3"
gem "sprockets-rails"
gem "mysql2"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "dotenv-rails"
gem "devise"

group :development, :test do
  gem "pry-rails"
end

group :development do
  gem "web-console"
end

gem "bootstrap"

# Linters
gem "brakeman", require: false
gem "fasterer", require: false
gem "rubocop", require: false
gem "rubocop-github"
gem "rubocop-performance", require: false
gem "rubocop-rails", require: false

# Database consistency
gem "database_consistency", require: false
