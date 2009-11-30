APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..'))

require 'rubygems'
require 'compass'
require 'sinatra'
require 'haml'
require 'rdiscount'

class TempatraApp < Sinatra::Application

  set :root, APP_ROOT

  configure do
    Compass.configuration.parse(File.join(APP_ROOT, 'config.rb'))
  end

  get '/' do
    haml :index
  end

# Uncomment to compile your stylesheets without the compass utility
#  get '/stylesheets/:name.css' do
#    content_type 'text/css', :charset => 'utf-8'
#    sass(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
#  end

end
