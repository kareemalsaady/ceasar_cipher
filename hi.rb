require 'sinatra'
require 'sinatra/reloader'

number = 4
get '/' do
  erb :index, :locals => {:number => number}
end
