source "https://rubygems.org"
ruby File.read(".ruby-version")

gem "rails", "7.1.3.4"

gem "govspeak"
gem "govuk_publishing_components", git: "https://github.com/alphagov/govuk_publishing_components.git", branch: "upgrade-to-govuk-frontend-5.1-gitignore-nodemodules"
gem "puma"
gem "reverse_markdown"
gem "rubyzip"
gem "sassc-rails"
gem "sprockets-rails"
gem "terser"

group :development, :test do
  gem "capybara"
  gem "govuk_test"
  gem "listen"
  gem "rspec-rails"
  gem "rubocop-govuk"
end

group :test do
  gem "webmock"
end
