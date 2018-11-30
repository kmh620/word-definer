
  require ('rspec')
  require ('pry')
  require ('word.rb')

describe('.all') do
  it('shows list array empty') do
    expect(Word.all()).to(eq([]))
  end
end


describe('case_word') do
  it('Will capitalize first letter of input word') do
    word = Word.new("spInaCH")
    expect(word.case_word()).to(eq("Spinach"))
  end
end
