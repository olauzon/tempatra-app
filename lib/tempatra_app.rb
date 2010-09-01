APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..'))

require 'rubygems'

# Uncomment to compile your stylesheets without using 'compass compile' or 'compass watch'
#gem 'compass', '~> 0.10.5'
#require 'compass' # must be loaded before sinatra

gem 'sinatra', '~> 1.0'
require 'sinatra'

gem 'haml', '~> 3.0.18'
require 'haml'    # must be loaded after sinatra

gem 'rdiscount', '~> 1.6.5'
require 'rdiscount'

class TempatraApp < Sinatra::Application

  set :root, APP_ROOT
  set :haml, { :format => :html5 } # default Haml format is :xhtml

# Uncomment to compile your stylesheets without using 'compass compile' or 'compass watch'
#  configure do
#    Compass.add_project_configuration(File.join(APP_ROOT, 'config/compass.rb'))
#  end

  get '/' do
    haml :index
  end

# Uncomment to compile your stylesheets without using 'compass compile' or 'compass watch'
#  get '/stylesheets/:name.css' do
#    content_type 'text/css', :charset => 'utf-8'
#    sass(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
#  end

end
