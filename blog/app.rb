require 'sinatra'
require './lib/posttoblog.rb'

set :public_folder, "public"

get '/' do
  erb :index
end

post '/blogpost/' do
  Posttoblog.new.blogpost(params['title'], params['content'], params['image'])
end