require 'test_helper'
require 'action_controller'
require 'coffee-rails'

class SiteController < ActionController::Base
  self.view_paths = File.expand_path("../support", __FILE__)

  # NOTE: Without this the index.html.erb template is selected
  # when requesting index.js
  # def index
  #   respond_to do |format|
  #     format.html
  #     format.js { render formats: [:js] }
  #   end
  # end
end

DummyApp = ActionDispatch::Routing::RouteSet.new
DummyApp.draw do
  get "site/index"
end

class TemplateHandlerTest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def app
    @app ||= DummyApp
  end

  test "coffee views are served as javascript" do
    get "/site/index.js"

    assert_match "alert('hello world');\n", last_response.body
  end
end
