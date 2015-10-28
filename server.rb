require "sinatra"
require_relative "models/siskel"

get "/" do
  erb :index
end

get "/movie" do
  movie = Siskel.new("Lion King")
  "The title of our movie is #{movie.title}."
end
