
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

end
