require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  @dictionary = Word.all()
  erb(:dictionary)
end

get('/add_word') do
  erb(:dictionary)
end

get('/add_definition') do
  erb(:definition)
end

get('/:id') do
  @dictionary = Word.find(params[:id])
  Word.add_define(@id)
  erb(:definition)
end

post ('/add_word') do
  @word_name = params.fetch("input-word")
  new_word = Word.new({:word => @word_name})
  new_word.save()

  @dictionary = Word.all()

  erb(:dictionary)
end

post ('/add_definition/:id') do
  @dictionary = Word.find(params[:id])
  @word_def = params.fetch("input-definition")
  new_definition = Word.new({:word => @word_name, :definition => @word_def})

  Word.add_definition(@dictionary)

  erb(:definition)
end
