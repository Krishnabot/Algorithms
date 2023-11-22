  FIRST_TWENTY_SIX_PRIMES = [
    2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31,
    37, 41, 43, 47, 53, 59, 61, 67, 71, 73,
    79, 83, 89, 97, 101
  ].freeze

  def self.anagram_number(word)
    word.downcase.chars
      .map { |letter| FIRST_TWENTY_SIX_PRIMES[letter.ord - 'a'.ord] }
      .reject { |index| index.nil? }
      .inject(:*)
  end

  def self.anagrams?(first_word, second_word)
    anagram_number(first_word) == anagram_number(second_word)
  end

# Test Cases:
puts anagrams?('anagram', 'nag a ram') # true
puts anagrams?('William Shakespeare', 'I am a weakish speller') # true
puts anagrams?('Madam Curie', 'Radium came') # true
puts anagrams?('notagram', 'notaflam') # false
