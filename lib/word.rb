
class Word

  attr_accessor(:word)
  attr_reader(:id)

  @@dictionary = []
  @@definition = []

  def initialize(attributes)
    @word = attributes.fetch(:word).downcase.capitalize
    # @definition = []
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

 def self.add_define(define_word)

   @@dictionary.each do |word|
     define_word.fetch(:definition).downcase.capitalize
     @definition.push(define_word)

    end

 end

end
