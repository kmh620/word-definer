require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')


get('/') do
  @dictionary = Word.all()
  erb(:dictionary)
end

post('/') do
  word = params.fetch("input-word")
  new_word = Word.new({:word => word, :id => nil, :definitions => nil})
  new_word.save
  redirect("/")
end

get("/definition/:id") do
  @word_id = params[:id]
  @new_word = Word.find(params[:id])
  erb(:definition)
end

get("/add_definition/:id") do
  @this_word_id = params[:id]
  @this_word = Word.find(params[:id])
  @word_definition = params[:definitions]
  @definitions = this_word.definitions
  redirect("/")
end

post("/add_definition/:id") do
  new_definition = params.fetch("input-definition")
  @new_word = Word.find(params[:id])
  @new_word.add_definition(new_definition)

  redirect("/")
end
