require 'rubygems'
require 'open-uri'
require 'haml'
require 'sinatra'

mime_type :coffee, "text/coffeescript"
set :public_folder, File.dirname(__FILE__) + '/public'
set :root, File.dirname(__FILE__) + '/'

get '/' do
  haml :index
end

get '/game' do
  open(File.dirname(__FILE__) + '/public/game.html').read
end


run Sinatra::Application
