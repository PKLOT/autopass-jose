source 'https://rubygems.org'

platforms :ruby do
  group :development do
    gem 'pry'
    gem 'pry-doc'
    # gem 'redcarpet'
    gem 'yard'
  end
end

group :test do
  gem 'minitest-focus', require: false
  gem 'minitest-perf', require: false
  gem 'rantly', require: false
  gem 'simplecov', require: false
  if ENV['CI']
    gem 'codecov', require: false
  end
end

# Specify your gem's dependencies in jose.gemspec
gemspec
