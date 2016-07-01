require("rspec")
require("word_count.rb")

describe('String#word_count') do
  it('will return 0 when the input word is not present in the input string of words') do
    expect(('the world is great').word_count('awesome')).to(eq(0))
  end
  it('will return 1 when the input word is present in the input string of words one time') do
    expect(('the world is awesome').word_count('awesome')).to(eq(1))
  end
  it('will return the appropriate value when the input word is present in the input string of words two or more times') do
    expect(('of all my acquaintances my dog is my favorite by far').word_count('my')).to(eq(3))
  end
  it('will handle uppercase user inputs') do
    expect(('WHAT THE WHAT IS GOING ON').word_count('WHAT')).to(eq(2))
  end
  it('will handle mixed case user inputs') do
    expect(('wHAt THE WhAT IS gOiNG oN').word_count('WHAT')).to(eq(2))
  end
  it('will handle user inputs with punctuation') do
    expect(('What the what is going on??!').word_count('on')).to(eq(1))
  end
  it('will handle an input string longer than one sentence.') do
    expect(('What the what is going on??! I cannot believe what is happening!').word_count('What')).to(eq(3))
  end
end
