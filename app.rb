require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

get '/team' do
  erb :team
end

post '/team' do
  @name = params[:name]
  @coach = params[:coach]
  @pg = params[:pg]
  @sg = params[:sg]
  @pf = params[:pf]
  @sf = params[:sf]
  @c = params[:c]
  erb :newteam
end

get '/newteam' do
  erb :team
end

end
