require('rspec')
require('anagrams')

describe('String#is_anagram?') do
  it('returns false if the target word and test word are not the same length') do
    expect("cat".is_anagram?("cute")).to(eq(false)) 
  end
end
