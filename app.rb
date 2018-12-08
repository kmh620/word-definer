require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

# directs to homepage- lists all words
get('/') do
  @dictionary = Word.all()
  erb(:dictionary)
end

get('/definition/:definition') do
  @new_word = Word.find(params[:definition])
  erb(:definition)
end

post('/definition/:id') do
  @word_def = params.fetch("definition")
  new_def = Word.add_definition({:definition => @word_def})
  @dictionary = Word.all()
  erb(:definition)
end

# post('/definition/new_word.id') do
#
# end

# get('/add_word') do
#   erb(:dictionary)
# end

# post('/add_word') do
#   @word_name = params.fetch("input-word")
#   new_word = Word.new({:word => @word_name})
#   new_word.save()
#   @dictionary = Word.all()
#   erb(:dictionary)
# end

# get('/add_definition/:id') do
#   @new_word = Word.find(params[:id])
#   erb(:definition)
# end

# post('/add_definition/:id') do
#   @definition = params.fetch("input-definition")
#   erb(:dictionary)
# end

#
# get('/dictionary/:id') do
#   @new_word = Word.find(params[:id])
#   erb(:definition)
# end
