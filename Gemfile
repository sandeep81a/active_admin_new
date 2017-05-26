source 'http://rubygems.org'

gemspec

ACTIVE_ADMIN_PATH = File.dirname(__FILE__) unless defined?(ACTIVE_ADMIN_PATH)

require File.expand_path('spec/support/detect_rails_version', ACTIVE_ADMIN_PATH)

rails_version = detect_rails_version
gem 'rails', rails_version
gem 'bourbon'
gem 'bootstrap-sass'
gem 'formtastic-plus-bootstrap'

case rails_version
when /^3\.0/
  # Do nothing, bundler should figure it out
when /^3\.(1|2)/
  # These are the gems you have to have for Rails 3.1 to be happy
  gem 'sass-rails'
  gem 'uglifier'
else
  raise "Rails #{rails_version} is not supported yet"
end

group :development, :test do
  gem 'sqlite3'

  gem 'rake',           '~> 10.0.2', :require => false
  gem 'haml',           '~> 3.1.7', :require => false
  gem 'yard'
  gem 'rdiscount' # For yard
  gem 'sprockets'
  gem 'rails-i18n' # Gives us default i18n for many languages
  gem 'parallel_tests'
end

group :test do
  gem 'rspec-rails',    '~> 2.9.0'
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'capybara',       '1.1.2'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'launchy'
  gem 'jslint_on_rails',    '~> 1.1.1'
  gem 'guard-rspec'
  gem "guard-coffeescript"
  gem 'jasmine'
  gem 'cancan'
end
