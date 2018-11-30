require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  @dictionary = Word.all()
  erb(:dictionary)
end

post ('/add') do
  word_name = params.fetch["input_word"]
  new_word = Word.new(word_name)
  new_word.save()
  dictionary_list = []

  @dictionary =Word.all()
  erb(:layout)
end
