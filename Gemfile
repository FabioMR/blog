source "https://rubygems.org"
ruby "2.0.0"

#==================================================
# RAILS CORE
#==================================================
gem "rails", "~> 4.1.2"
gem "mysql2"

#==================================================
# ASSETS - Back-end
#==================================================
gem "rails-i18n"
gem "active_decorator"

#==================================================
# ASSETS - Integration & Compressors
#==================================================
gem "sass-rails"
gem "uglifier"
gem "compass-rails"

#==================================================
# ASSETS - Front-end
#==================================================
gem "jquery-rails"
gem "turbolinks"
gem "nprogress-rails"

#==================================================
# GEM - Development
#==================================================
group :development do
  gem "thin"
  gem "spring"
  gem "pry-meta"
  gem "clean_logger"
end

#==================================================
# GEM - Test
#==================================================
group :development, :test do
  gem "rspec-rails"
  gem "rspec-activemodel-mocks"
end

group :test do
  gem "capybara"
  gem "delorean"
end
