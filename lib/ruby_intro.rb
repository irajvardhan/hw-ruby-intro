# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  # find max two elements, then sum them
  arr.max(2).sum
end

def sum_to_n? arr, n
  # check if array is empty
  if arr.empty?
  	return false
  end

  combos = arr.permutation(2).select { |p, q| p + q == n }
  if combos.empty?
    return false
  else
    return true
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  s = "Hello, "
  s.concat(name)
end

def starts_with_consonant? s
  # check that the first_character should be a consonant or a non word
  # then return False
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  end

  # otherwise we return True
  return true

end

def binary_multiple_of_4? s

  if !s.empty? and s.to_i % 4 == 0 and s !~ /[^01]/
  	return true
  end

  # otherwise we return False
  return false

end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

  def initialize(_isbn, _price)
    raise ArgumentError if _isbn.empty? || _price <= 0
    @isbn = _isbn
    @price = _price
  end

  def price_as_string
    "$%.2f" % @price #concatenates % and converts price attribute (@price) into floating point with 2 decimal points
  end
end
