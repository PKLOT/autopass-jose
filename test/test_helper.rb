require 'pry'

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
  if ENV['CI']
    require 'codecov'
    SimpleCov.formatter = SimpleCov::Formatter::Codecov
  end
end

require 'tempfile'

ENV['JOSE_CRYPTO_FALLBACK'] ||= '1'
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'jose'

ENV['RANTLY_VERBOSE'] ||= '0'
require File.expand_path('../rantly_extensions', __FILE__)

require File.expand_path('../rsa_generator', __FILE__)

require 'minitest/autorun'
require 'minitest/perf'
if ENV['FOCUS']
  require 'minitest/focus'
end
