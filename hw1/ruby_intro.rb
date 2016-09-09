# When done, submit this entire file to the autograder

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.inject(sum, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  arr.max(2).reduce(sum, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.uniq.combination(2).detect{|x, y| x + y == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^[01]+$/ === s && s.to_i(2) % 4 == 0 
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :price
  attr_accessor :isbn

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
  end

  def price_as_string
    sprintf '$%.2f', @price
  end
end
