def swap(arr, x, y)
  arr[x], arr[y] = arr[y], arr[x]
end

def partition(arr, a, b, x)
  m = a - 1
  (a..b).each do |k|
    if arr[k] <= x
      m += 1
      swap(arr, m, k)
    end
  end
  m
end

def quick_sort(arr, a, b)
  return arr if a >= b

  pivot = partition(arr, a, b, arr[b])
  quick_sort(arr, a, pivot - 1)
  quick_sort(arr, pivot + 1, b)
  arr
end

def test_quick_sort
  # Test Case 1
  arr1 = [3, 1, -10, 8, 10, 4]
  expected_result1 = [-10, 1, 3, 4, 8, 10]
  quick_sort(arr1, 0, arr1.size - 1)
  raise "Test Case 1 Failed" unless arr1 == expected_result1

  # Test Case 2
  arr2 = [5, 2, 9, 1, 5, 6]
  expected_result2 = [1, 2, 5, 5, 6, 9]
  quick_sort(arr2, 0, arr2.size - 1)
  raise "Test Case 2 Failed" unless arr2 == expected_result2

  # Test Case 3
  arr3 = [10, 7, 8, 9, 1, 5]
  expected_result3 = [1, 5, 7, 8, 9, 10]
  quick_sort(arr3, 0, arr3.size - 1)
  raise "Test Case 3 Failed" unless arr3 == expected_result3

  puts "All test cases passed successfully!"
end

# Run the test
test_quick_sort
