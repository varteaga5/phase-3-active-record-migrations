ENV["RACK_ENV"] ||= "development"

# config/environment.rb
require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])


# put the code to connect to the database here
ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/artists.sqlite"
  )

require_relative "../app/models/artist"
