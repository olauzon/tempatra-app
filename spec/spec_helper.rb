require File.join(File.dirname(__FILE__), '..', 'lib', 'tempatra_app.rb')

require 'rack/test'
require 'spec'
require 'spec/autorun'
require 'spec/interop/test'

TempatraApp.set(
 :environment  => :test,
 :run          => false,
 :raise_errors => true,
 :logging      => false
)

module TestHelper

  def app
    @app || TempatraApp
  end

  def body
    last_response.body
  end

  def status
    last_response.status
  end

  include Rack::Test::Methods

end

Spec::Runner.configure do |config|
  include TestHelper
end
