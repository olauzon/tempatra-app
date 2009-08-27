APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..'))

require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'rdiscount'

class TempatraApp < Sinatra::Application

  set :root, APP_ROOT

  get '/' do
    haml :index
  end

end
