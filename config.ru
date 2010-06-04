# To use with thin 
#  thin start -p PORT -R config.ru

require File.join(File.dirname(__FILE__), 'lib', 'tempatra_app.rb')

disable :run

# Uncomment to run in development mode on Heroku
#set :environment, :development

run TempatraApp
