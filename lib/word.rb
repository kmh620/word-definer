
class Word

  attr_accessor(:word)
  attr_reader(:id, :definition)


  @@dictionary = []

  def initialize(attributes)
    @word = attributes.fetch(:word).capitalize
    @definition = attributes.fetch(:definition).capitalize
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





 def self.define(word)
   new_word =
   definitions = []
    new_word
   define_word.fetch(:definition).downcase.capitalize
   definitions.push(define)

   definitions
 end

 #
 # def self.add_define(define_word)
 #
 #   @@dictionary.each do |word|
 #     define_word.fetch(:definition).downcase.capitalize
 #     @definition.push(define_word)
 #
 #    end
 #
 # end

end
