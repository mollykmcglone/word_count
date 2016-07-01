require('pry')
class String
  define_method(:word_count) do |check_word|
    input_words = self.split
    answer = 0
    input_words.each do |word|
      if word == check_word
      answer += 1
      end
    end
    answer
  end
end
