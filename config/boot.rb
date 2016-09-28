

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

puts "[boot] boot.rb - before require 'bundler/setup'"
require 'bundler/setup' # Set up gems listed in the Gemfile.
puts "[boot] boot.rb - after require 'bundler/setup'"
