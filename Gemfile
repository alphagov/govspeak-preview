source "https://rubygems.org"

ruby File.read(".ruby-version").chomp

gem "gds-api-adapters"
gem "govspeak"
gem "govuk_publishing_components"
gem "puma"
gem "rails", "5.2.3"
gem "reverse_markdown", "~> 1.0.5"
gem "rubyzip", "~> 1.3.0"

group :assets do
  gem "coffee-rails"
  gem "sass-rails", "~> 5.1"
  gem "uglifier"
end

group :development, :test do
  gem "capybara"
  gem "listen"
  gem "rspec-rails", "~> 3.7"
  gem "rubocop-govuk"
end

group :test do
  gem "webmock", "~> 3.3.0"
end
