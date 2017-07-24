require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/definition')
  require('./lib/word')

  get('/') do
    erb(:index)
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

  get('/definitions/new') do
    erb(:word_definition)
  end

  get('/definitions') do
    @definitions = Definition.all()
    erb(:definitions)
  end

  post('/definitions') do
    definition = params.fetch('name')
    Definition.new(definition).save()
    @definitions = Definition.all()
    erb(:suces)
  end

  get('/definitions/:id') do
    @definitions = Definition.find(params.fetch('id').to_i())
    erb(:definitions)
  end

  get('/words/:id') do
    @word = Definition.find(params.fetch('id').to_i())
    erb(:definitions)
  end

  get('/words/:id/definitions/new') do
      @definition = Definition.find(params.fetch('id').to_i())
      erb(:word_definition)
  end

  post('/definitions') do
    definition = params.fetch('definition')
    @definition = Definition.new(definition)
    @definition.save()
    @word = Word.find(params.fetch('word_id').to_i())
    @word.add_definition(@definition)
    erb(:success)
  end
