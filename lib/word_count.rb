require('pry')
class String
  define_method(:word_count) do |check_word|
    input_words = self.split[]
    input_words.each do |word|
      if word == check_word
      answer += 1
      else
      answer = 0
      end
    end
  end
end
