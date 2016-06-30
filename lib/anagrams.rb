require('pry')

class String
  define_method(:is_anagram?) do |string_2|
    target_word = self.split("")
    test_word = string_2.split("")

    (target_word.length()).==(test_word.length())
  end
end
