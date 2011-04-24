source 'http://rubygems.org'

gem 'rails', '3.0.3'

gem 'cells'

gem 'mysql', :require => 'mysql'

gem 'spork', '~> 0.9.0.rc'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :test, :development do
#  gem 'webrat'
  gem "rspec-rails", "~> 2.4"
end

group :test do
  gem "rspec-cells"
  gem "autotest"
  gem "cucumber"
  gem "cucumber-rails"
  gem "capybara"
  gem "launchy"
end
