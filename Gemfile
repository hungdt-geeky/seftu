# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "bootsnap", require: false
gem "devise"
gem "dotenv-rails"
gem "importmap-rails"
gem "jbuilder"
gem "mysql2"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.3"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

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
gem "rubocop-github", require: false
gem "rubocop-performance", require: false
gem "rubocop-rails", require: false
