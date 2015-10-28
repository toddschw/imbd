require "sinatra"
require_relative "models/siskel"

get "/" do
  erb :index
end

get "/movie/:name" do
  @movie = Siskel.new(params["name"])
  erb :movie
end
