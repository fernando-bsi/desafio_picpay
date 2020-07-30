require 'cucumber'
require 'httparty'
require 'pry'
require 'ffaker'
require 'rubocop'

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")