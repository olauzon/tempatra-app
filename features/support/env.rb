require File.expand_path(File.dirname(__FILE__) + '/../../spec/spec_helper')

ENV['RACK_ENV'] ||= 'test'
TempatraApp.set :environment, :test

require 'capybara/cucumber'
Capybara.app = TempatraApp

module MyWorld
  def app
    @app ||= Rack::Builder.new do
      run TempatraApp
    end
  end
  include Rack::Test::Methods
end

World(MyWorld)
