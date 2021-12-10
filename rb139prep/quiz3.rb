## 1 Define the following tools.
## 2
## 3
## 4
# RubyGems
# Bundler
# RVM
# Rake
# Rbenv

## 5 What file would have the following code?
# GEM
#   remote: https://rubygems.org/
#   specs:
#     mustermann (1.0.0)
#     pg (0.21.0)
#     rack (2.0.3)
#     rack-protection (2.0.0)
#       rack
#     sequel (4.48.0)
#     sinatra (2.0.0)
#       mustermann (~> 1.0)
#       rack (~> 2.0)
#       rack-protection (= 2.0.0)
#       tilt (~> 2.0)
#     tilt (2.0.7)

# PLATFORMS
#   ruby

# DEPENDENCIES
#   pg (~> 0.21.0)
#   sequel (~> 4.48)
#   sinatra (~> 2.0)

# RUBY VERSION
#   ruby 2.6.3

# BUNDLED WITH
#   1.15.1

## 6 What file would have the following code?
# source 'https://rubygems.org'

# ruby '2.6.3'

# gem 'sinatra', '~> 2.0'
# gem 'postgres', '~> 0.8.1'
# gem 'sequel', '~> 4.48'
# gem 'minitest', '~> 5.10'
# gem 'minitest-reporters', '~> 1.1'
# gem 'rake', '~> 12.0'

# gemspec

## 7 What file would have the following code?
# desc 'Run tests'
# task :test do
#   sh 'ruby ./test/my_app_test.rb'
# end

# desc 'Run tests'
# task :default => :test

## 8 Where do Gemfile and Gemfile.lock come from? Which tool are they used with?

## 9 What are they?

## 10 How do you create a Gemfile.lock?

## 11 How do you fix the following error?
# ruby my_app.rb
# Gem::LoadError: You have already activated rake 11.3.0, but your Gemfile requires rake 10.4.2.
