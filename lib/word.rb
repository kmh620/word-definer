
class Word

  attr_accessor(:word)
  attr_reader(:id, :definitions)

  @@dictionary = []

  def initialize(attributes)
    @word = attributes.fetch(:word).capitalize
    @definitions = []
    @id = @@dictionary.length + 1
  end

  def self.find(id)
  word_id = id.to_i()
   @@dictionary.each do |word|
     if word.id == word_id
       return word
     end
   end
 end

  def add_definition(definition)
    @definitions.push(definition)
  end

  def self.all()
    @@dictionary
  end

  def self.clear()
    @@dictionary = []
  end

  def save()
   @@dictionary.push(self)
  end

end
