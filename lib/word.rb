
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


  def self.find(word_id)
    @id = word_id
    @@dictionary.each do |word|
      if word_id == true
        @dictionary[i].define(word_define)
      else false
      end
    end
  end


  def save()
   @@dictionary.push(self)
  end

  def define(word_define)
    @definition = word_define
  end

  # def self.all_words()
  #   dictionary_array = []
  #   index = 0
  #   while index < Word.all.length
  #     dictionary_array.push(word.all[i].word)
  #     index += 1
  #   end
  #   return dictionary_array
  # end

end
