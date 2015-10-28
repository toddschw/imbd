require "sinatra"
require_relative "models/siskel"

get "/" do
  erb :index
end

get "/movie/:name" do
  @flick = Siskel.new(params["name"])
  erb :movie
end

get "/movie?" do
   searched_movie = params['title']
   @flick = Siskel.new(searched_movie)
   erb :movie

end
