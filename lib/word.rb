
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

 def define(word_define)
   @definition = word_define
 end



end
