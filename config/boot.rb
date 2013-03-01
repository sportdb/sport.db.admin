require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)


puts "[debug] boot.rb - before require 'bundler/setup'"

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

puts "[debug] boot.rb - after require 'bundler/setup'"


### todo/fix/check:  can we add it to gemfile w/ dependency on gem?
### require 'logutils/db'
