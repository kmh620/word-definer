
class Word

  attr_accessor(:word)
  attr_reader(:id)

  @@dictionary = []

  def initialize(word)
    @word = word
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



  def case_word
    word.downcase.capitalize
  end


end
