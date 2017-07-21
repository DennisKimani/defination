require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/description')
  require('./lib/word')

  get('/') do
    erb(:index)
  end

  get('/words/new') do
     erb(:words_form)
  end

  get('/words') do
    @words = Word.all()
    erb(:words)
  end

  post('/words') do
    name = params.fetch('name')
    Word.new(name).save()
    @words = Word.all()
    erb(:success)
  end

  get('/descriptions/new') do
    erb(:word_descriptions_form)
  end

  get('/descriptions') do
    @descriptions = Description.all()
    erb(:descriptions)
  end

  post('/descriptions') do
    description = params.fetch('name')
    Description.new(description).save()
    @descriptions = Description.all()
    erb(:success_2)
  end

  get('/descriptions/:id') do
    @descriptions = Description.find(params.fetch('id').to_i())
    erb(:descriptions)
  end

  get('/words/:id') do
    @word = Description.find(params.fetch('id').to_i())
    erb(:descriptions)
  end

  get('/words/:id/descriptions/new') do
      @description = Description.find(params.fetch('id').to_i())
      erb(:word_descriptions_form)
  end

  post('/descriptions') do
    description = params.fetch('description')
    @description = Description.new(description)
    @description.save()
    @word = Word.find(params.fetch('word_id').to_i())
    @word.add_description(@description)
    erb(:success)
  end
