require('pry')

class String
  define_method(:is_anagram?) do |string_2|
    target_word = self.split("")
    test_word = string_2.split("")

    if (target_word.length()).==(test_word.length())
      sorted_target_word = target_word.sort()
      sorted_test_word = test_word.sort()
      sorted_target_word.join().==sorted_test_word.join()
    else
      false
    end
  end
end
