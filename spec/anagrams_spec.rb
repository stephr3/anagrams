require('rspec')
require('anagrams')

describe('String#is_anagram?') do
  it('returns false if the target word and test word are not the same length') do
    expect("cat".is_anagram?("cute")).to(eq(false))
  end

  it("returns false if the target word and test word are the same length, but not anagrams") do
    expect('cat'.is_anagram?("cut")).to(eq(false))
  end

  it("returns true if the target word and test word are the same length and anagrams") do
    expect('cat'.is_anagram?("act")).to(eq(true))
  end
end

# arr.each_with_index() do |letter, i|
#   letter.concat(arr[i])
# end
