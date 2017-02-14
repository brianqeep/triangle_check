require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangle') do


   @length = params[:length].to_i()
   @width = params[:width].to_i()
   @height = params[:height].to_i()

  @winner = [params[:length],params[:width],params[:height]]
  @winner = @winner.join(",")
  @win = triangle?(@winner)

  erb(:triangle)
end
