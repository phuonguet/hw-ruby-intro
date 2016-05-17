@@ -3,33 +3,70 @@
  # Part 1
  
  def sum arr
 -  # YOUR CODE HERE
 + s = 0
 + arr.each { |a|  s += a }
 + return s
  end
  
  def max_2_sum arr
 -  # YOUR CODE HERE
 +  s = 0
 +  if (arr.length == 1)
 +    return arr[0]
 +  end
 +   
 +  if (arr.length == 0)
 +    return 0
 +  end
 +  
 +  if(!arr.empty?)
 +    arr = arr.sort{ |x,y| y <=> x }
 +  end
 +  
 +  s = arr[0] + arr[1]
 +  return s
  end
  
  def sum_to_n? arr, n
 -  # YOUR CODE HERE
 +  arr.combination(2).each { |c|return true if (c[1] + c[0] === n) }
 +  false
  end
  
  # Part 2
  
  def hello(name)
 -  # YOUR CODE HERE
 +  "Hello, #{name}"
  end
  
  def starts_with_consonant? s
 -  # YOUR CODE HERE
 +  if s.empty?
 +  	return false
 +  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
 +    return true
 +  else
 +    return false
 +  end
  end
  
  def binary_multiple_of_4? s
 -  # YOUR CODE HERE
 +  if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
 +		return true
 +	else
 +		return false
 +	end
  end
  
  # Part 3
  
  class BookInStock
 -# YOUR CODE HERE
 +attr_accessor :isbn, :price
 +
 +  def initialize(isbn, price)
 +    raise ArgumentError if isbn.empty? || price <= 0
 +    @isbn = isbn
 +    @price = price
 +  end
 +
 +  def price_as_string
 +    "$%.2f" % @price
 +  end
  end