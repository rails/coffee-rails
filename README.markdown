# Coffee-Rails

Coffee Script adapter for the Rails asset pipeline. Also adds support to use CoffeeScript to respond to JavaScript requests (use .js.coffee views).

## Installation

Since Rails 3.1 Coffee-Rails is included in the default Gemfile when you create a new application. If you are upgrading to Rails 3.1 you must add the coffee-rails to your Gemfile:

    gem 'coffee-rails'

If you are precompiling your assets (with rake assets:precompile) before run your application in production, you might want add it to the assets group to prevent the gem being required in the production environment.

    group :assets do
      gem 'coffee-rails'
    end

## Running tests

    $ bundle install
    $ bundle exec rake test

If you need to test against local gems, use Bundler's gem :path option in the Gemfile.
