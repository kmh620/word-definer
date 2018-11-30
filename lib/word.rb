
class Word

  attr_accessor(:word)
  attr_reader(:id)

  @@list = []

  def initialize(word)
    @word = word
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def self.clear()
    @@list = []
  end


  def save()
   @@list.push(self)
  end



  def case_word
    word.downcase.capitalize
  end


end
