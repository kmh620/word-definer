
class Word

  attr_accessor(:word)

  @@list = []

  def initialize(word)
    @word = word
  end

  def case_word
    @@list.push(word.downcase.capitalize)
  end


end
