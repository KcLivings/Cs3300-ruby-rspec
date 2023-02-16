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
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # Check if the first character of the string is a letter
  if s =~ /^[a-zA-Z]/
    # Check if the first letter is a consonant (any letter other than A, E, I, O, U)
    return s =~ /^[^aeiou]/i
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  # Check if the string represents a valid binary number
  if s =~ /^[01]+$/
    # Convert the binary string to an integer and check if it is divisible by 4
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
