require "sinatra"
require_relative "models/siskel"

get "/" do
  @flick = Siskel.new("superman")
  erb :movie
end


get "/movie?" do
   searched_movie = params['title']
   @flick = Siskel.new(searched_movie)
   erb :movie
 end


get "/ratings/:name" do
      @flick = Siskel.new(params["name"])
      @flick.inspect
end
