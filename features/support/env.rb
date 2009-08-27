require File.expand_path(File.dirname(__FILE__) + '/../../spec/spec_helper')
require 'webrat'

TempatraApp.set :environment, :development

ENV['RACK_ENV'] ||= 'development'

module MyWorld
  def app
    @app ||= Rack::Builder.new do
      run TempatraApp
    end
  end
  include Rack::Test::Methods
  include Webrat::Methods
  include Webrat::Matchers
end

World(MyWorld)

Webrat.configure do |config|
  config.mode                   = :rack
  config.application_framework  = :rack
  config.application_port       = 4567
end
