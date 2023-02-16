# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  #create a sum variable
  sum_is = 0
  #check length and dont sum if length is 0
  if arr.length > 0
    #iterate through array, summing each as you go along
    arr.each {|x| sum_is += x }
  end  
  sum_is
end

def max_2_sum(array)
  #check conditions
  if array.length == 0
    return 0
  elsif array.length == 1
    return array[0]
  else
    #if all met, Sort the array in descending order and sum the first two elements
    sorted_array = array.sort.reverse
    return sorted_array[0] + sorted_array[1]
  end
end


def sum_to_n?(array, n)
  # create a hash to store each element and its index in the array
  hash = Hash.new
  
  #iterate through the array and get compliment from n
  array.each_with_index do |element, index|
    complement = n - element
    #check if the element's complement exists in the hash
    if hash.key?(complement)
      return true
    end
    hash[element] = index
  end
  
  #If no pair of elements sums to n, return false
  return false
end


# Part 2

def hello(name)
  #adde name to hello
  return "Hello, " + name
end

def starts_with_consonant?(s)
  #check if the first character of the string is a letter
  if s =~ /^[a-zA-Z]/ #regular expressionsssssssssss make this easy
    # Check if the first letter is a consonant (any letter other than A, E, I, O, U)
    return s =~ /^[^aeiou]/i
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  #Check if the string represents a valid binary number
  if s =~ /^[01]+$/
    # convert the binary string to an integer and check if it is divisible by 4
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  #create attributes for isbn and price
  attr_accessor :isbn, :price
  
  # Create constructor that takes isbn and price
  def initialize(isbn, price)
    #if isbn or price dont work, error out
    if isbn.empty? || price <= 0
      raise ArgumentError, "ISBN cannot be empty and price must be greater than zero"
    end
    @isbn = isbn
    @price = price
  end
  
  # convert the price string to a price that is accurate
  def price_as_string
    sprintf("$%.2f", @price)
  end
end

