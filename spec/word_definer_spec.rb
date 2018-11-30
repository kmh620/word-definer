
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
end

describe('case_word') do
  it('Will capitalize first letter of input word, adjust for different capitalizations') do
    word = Word.new({:word => "sPinaCH"})
    expect(word.case_word()).to(eq("Spinach"))
  end
end
