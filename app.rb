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

post('/add_word') do
  @word_name = params.fetch("input-word")
  new_word = Word.new({:word => @word_name})
  new_word.save()
  @dictionary = Word.all()
  erb(:dictionary)
end

get('/dictionary/:id') do
  @new_word = Word.find(params[:id])
  erb(:definition)
end

get('/definition/:id') do
  @new_word = Word.find(params[:id])
  erb(:definition)
end

get('/definition/:definition') do
  @new_word = Word.find(params[:definition])
  erb(:definition)
end


post('/definition/:id') do
  @word_def = params.fetch("input-definition")
  new_def = Word.define({:definition => @word_def})
  new_def.save()
  @dictionary = Word.all()
  erb(:dictionary)

end
