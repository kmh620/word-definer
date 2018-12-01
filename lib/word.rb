
class Word

  attr_accessor(:word, :definition)
  attr_reader(:id)

  @@dictionary = []

  def initialize(attributes)
    @word = attributes.fetch(:word).downcase.capitalize
    @definition = false
    @id = @@dictionary.length + 1
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

  def self.find(id)
  word_id = id.to_i()
   @@dictionary.each do |word|
     if word.id == word_id
       return word
     end
   end
 end

 def self.define(word_define)
   @definition = word_define
 end

 def self.add_define(word_define)
   @@dictionary.each do |word, definition|
     if definition == false
       @@dictionary[i].define(word_define)
     end
   end

end

end
