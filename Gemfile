source 'https://rubygems.org'

ruby File.read('.ruby-version').chomp

gem 'rails', '5.1.4'
gem 'puma'
gem 'slimmer', '13.0.0'
gem 'govspeak', '5.4.0'
gem 'govuk_frontend_toolkit', '7.2.0'
gem 'govuk_publishing_components', '9.10'
gem 'rubyzip', '~> 1.2.1'
gem 'reverse_markdown', '~> 1.0.5'
gem 'gds-api-adapters'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :development, :test do
  gem 'listen'
  gem 'rspec-rails', '~> 3.7'
  gem 'capybara'
  gem 'govuk-lint'
end

group :test do
  gem 'webmock', '~> 3.3.0'
end
