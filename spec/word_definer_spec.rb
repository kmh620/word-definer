
  require ('rspec')
  require ('pry')
  require ('word.rb')

describe("Word") do
  before() do
    Word.clear()
    end

  describe('.all') do
    it('Shows dictionary array empty') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('Saves word to dictionary') do
      word = Word.new({:word => "water"})
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe('.clear') do
    it('Clears all words from dictionary') do
      word = Word.new({:word => "tree"})
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it("Adds 1 to id with each new word added") do
      word = Word.new({:word => "tall"})
      word.save()
      word2 = Word.new({:word => "green"})
      word2.save()
      expect(word.id()).to(eq(1))
      expect(word2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("Finds word by its id") do
      word = Word.new({:word => "ocean"})
      word.save()
      word2 = Word.new({:word => "seaweed"})
      word2.save()
      expect(Word.find(1)).to(eq(word))
      expect(Word.find(2)).to(eq(word2))
    end
  end
end
