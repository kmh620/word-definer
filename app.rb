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

post ('/add_word') do
  @word_name = params.fetch("input-word")
  new_word = Word.new({:word => @word_name})
  new_word.save()
   # Contact.add_contact(new_contact)
  # dictionary_list = []
  #
  # dictionary_list = Word.all_words


  @dictionary = Word.all()
  erb(:dictionary)
end
