def insertion_sort(array)
  result = [array.shift]

  array.each do |n|
    index = result.find_index { |element| n <= element } || result.length
    result.insert(index, n)
  end

  result
end

def insertion_sort_test
  # Test case 1
  array1 = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
  sorted_array1 = insertion_sort(array1)
  puts "Test Case 1: #{sorted_array1 == array1.sort}"

  # Test case 2
  array2 = [9, 8, 7, 6, 5, 4, 3, 2, 1]
  sorted_array2 = insertion_sort(array2)
  puts "Test Case 2: #{sorted_array2 == array2.sort.reverse}"

  # Test case 3
  array3 = [1, 2, 3, 4, 5]
  sorted_array3 = insertion_sort(array3)
  puts "Test Case 3: #{sorted_array3 == array3}"
end

# Run the test
insertion_sort_test
