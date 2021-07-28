require 'cucumber'
require 'httparty'
require 'json-schema'
require 'pry'
require 'rspec'

DATA = YAML.load_file('./environments/data.yml')
