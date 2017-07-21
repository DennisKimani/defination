require('sinatra')
 require('sinatra/reloader')
 also_reload("lib/**/*.rb")
 require("./lib/word")
 require("./lib/description")
 require('pry')

 get('/') do
   @words = Word.all()
   erb(:index)
 end

 post("/words") do
   single = params.fetch("single")
   word = Word.new(single)
   word.save()
    erb(:success)
 end
