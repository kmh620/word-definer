
  require ('rspec')
  require ('pry')
  require ('word.rb')

describe('case_word') do
  it('Will capitalize first letter of input word and push to list') do
    word = Word.new("spInaCH")
    expect(word.case_word()).to(eq(["Spinach"]))
  end
end
