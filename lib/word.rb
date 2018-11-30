
class Word

  attr_accessor(:word)
  attr_reader(:id)

  @@dictionary = []

  def initialize(attributes)
    @word = attributes.fetch(:word)
    # @definition attributes.fetch(:definition)
    @id = @@dictionary.length + 1
  end

  def self.all()
    @@dictionary
  end

  def self.clear()
    @@dictionary = []
  end

  def self.find(id)

  end


  def save()
   @@dictionary.push(self)
  end
  #
  # def assign_id
  #   @@word_id += 1
  #   @id = @@word_id
  # end

  def case_word
    word.downcase.capitalize
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
