def binary_search(element, arr)
  beg = 0
  last = arr.length - 1

  while beg <= last
    middle = (beg + last) / 2

    if arr[middle] == element
      return true
    elsif arr[middle] < element
      beg = middle + 1
    else
      last = middle - 1
    end
  end

  false
end

# Test Cases
puts binary_search(3, [1, 2, 3, 4, 5])  # Output: true
puts binary_search(6, [1, 2, 3, 4, 5])  # Output: false
puts binary_search(1, [1, 2, 3, 4, 5])  # Output: true
puts binary_search(5, [1, 2, 3, 4, 5])  # Output: true
puts binary_search(0, [1, 2, 3, 4, 5])  # Output: false
