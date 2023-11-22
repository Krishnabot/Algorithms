def is_palindrome?(input)
  # first emove non-alphanumeric characters and convert to lowercase
  cleaned_input = input.downcase.gsub(/[^a-z0-9]/, '')

  # then heck if the cleaned input is a palindrome
  left = 0
  right = cleaned_input.length - 1

  while left < right
    if cleaned_input[left] != cleaned_input[right]
      return false
    end

    left += 1
    right -= 1
  end

  true
end

# Test cases
puts is_palindrome?("A man, a plan, a canal, Panama")  # true
puts is_palindrome?("race a car")                      # false
puts is_palindrome?("Was it a car or a cat I saw?")    # true
puts is_palindrome?("No 'x' in Nixon")                 # true
puts is_palindrome?("hello")                           # false
