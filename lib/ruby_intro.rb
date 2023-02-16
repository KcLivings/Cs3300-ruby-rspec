# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum_is = 0
  if arr.length > 0
    arr.each {|x| sum_is += x }
  end  
  sum_is
end

def max_2_sum(array)
  if array.length == 0
    return 0
  elsif array.length == 1
    return array[0]
  else
    # Sort the array in descending order and sum the first two elements
    sorted_array = array.sort.reverse
    return sorted_array[0] + sorted_array[1]
  end
end


def sum_to_n?(array, n)
  # Create a hash to store each element and its index in the array
  hash = Hash.new
  
  # Iterate through the array and check if each element's complement (i.e., the difference between the target sum and the element) exists in the hash
  array.each_with_index do |element, index|
    complement = n - element
    if hash.key?(complement)
      return true
    end
    hash[element] = index
  end
  
  # If no pair of elements sums to n, return false
  return false
end


# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
