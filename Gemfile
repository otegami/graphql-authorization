source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "graphql", "1.13.15"
gem "graphql-guard"
gem "pundit"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end
gem "graphiql-rails", group: :development
