APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..'))

require 'rubygems'

gem 'compass', '~> 0.10.2'
require 'compass' # must be loaded before sinatra

gem 'sinatra', '~> 1.0'
require 'sinatra'

gem 'haml', '~> 3.0.9'
require 'haml'    # must be loaded after sinatra

gem 'rdiscount', '~> 1.6.3.2'
require 'rdiscount'

class TempatraApp < Sinatra::Application

  set :root, APP_ROOT
  set :haml, { :format => :html5 } # default Haml format is :xhtml

  configure do
    Compass.add_project_configuration(File.join(APP_ROOT, 'compass.config'))
  end

  get '/' do
    haml :index
  end

# Comment to compile your stylesheets with the compass utility
  get '/stylesheets/:name.css' do
    content_type 'text/css', :charset => 'utf-8'
    sass(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
  end

end
