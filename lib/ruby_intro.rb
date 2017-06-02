# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.inject(0, :+)
end


def max_2_sum(arr)
  # YOUR CODE HERE
  arr.sort.last(2).inject(0, :+)
end

def sum_to_n? arr, n
  !!arr.combination(2).find { |x, y| x + y == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE

  (s =~ /\A(?=[^aeiou])(?=[a-z])/i) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # 'dhsfgsdj'
  # '0101' s ~= /[2-9a-z]/i
  return false if s.empty?
  if s =~ /[^01]/
    return false
  else
    s.to_i(2) % 4 == 0
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price
def initialize(isbn, price)
  raise ArgumentError if isbn.empty? || price<=0
  @isbn = isbn
  @price = price
end

def price_as_string
  formated_price = sprintf( "%0.2f", price)
  return "$#{formated_price}"
end

end
