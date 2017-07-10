require('sinatra')
 require('sinatra/reloader')
 also_reload("lib/**/*.rb")
 require("./lib/word")
 require('pry')


 get('/') do
   @words = Word.all()
   erb(:index)
 end

 post("/words") do
   single = params.fetch("single")
   Word.new(single).save
   erb(:success)
 end
