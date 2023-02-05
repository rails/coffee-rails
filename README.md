# Coffee-Rails

CoffeeScript adapter for the Rails asset pipeline. Also adds support to use CoffeeScript to respond to JavaScript requests (use `.coffee` views).

## Installation

Since Rails 3.1 Coffee-Rails is included in the default Gemfile when you create a new application. If you are upgrading to Rails 3.1 you must add the coffee-rails to your Gemfile:

~~~ruby
gem 'coffee-rails'
~~~

## Running tests

    $ bundle install
    $ bundle exec rake test

If you need to test against local gems, use Bundler's gem `:path` option in the Gemfile.

## Code Status

* [![CI](https://github.com/rails/coffee-rails/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/rails/coffee-rails/actions/workflows/ci.yml)
* [![Gem Version](https://badge.fury.io/rb/coffee-rails.svg)](http://badge.fury.io/rb/coffee-rails)
