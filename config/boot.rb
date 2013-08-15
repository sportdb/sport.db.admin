require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

puts "[boot] boot.rb - before require 'bundler/setup'"
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
puts "[boot] boot.rb - after require 'bundler/setup'"

