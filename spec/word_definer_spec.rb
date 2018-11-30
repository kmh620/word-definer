
  require ('rspec')
  require ('pry')
  require ('word.rb')

describe("Word") do
  describe('.all') do
    it('Shows list array empty') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('Saves word to list') do
      word = Word.new("water")
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end
end

describe('case_word') do
  it('Will capitalize first letter of input word, adjust for different capitalizations') do
    word = Word.new("spInaCH")
    expect(word.case_word()).to(eq("Spinach"))
  end
end
