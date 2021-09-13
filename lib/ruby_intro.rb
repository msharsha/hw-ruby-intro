# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_of_elements = 0
  i = 0
  while i < arr.size do
    sum_of_elements = sum_of_elements + arr[i]
    i=i+1
  end
  return sum_of_elements
end

def max_2_sum arr
  # YOUR CODE HERE
  arr_sorted_desc = arr.sort.reverse
  sum = 0
  if arr_sorted_desc.size == 1
    sum = sum + arr_sorted_desc[0]
  elsif(arr_sorted_desc.size >= 1)
    sum = sum + arr_sorted_desc[0] + arr_sorted_desc[1]
  end
  # puts sum
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sorted_arr=arr.sort
  left=0
  right = sorted_arr.size-1 
  flag=false
  while left<right && flag==false
    sum = sorted_arr[left]+sorted_arr[right]
    if sum==n
      flag=true
    elsif sum>n
      right = right-1
    elsif sum<n
      left = left+1
    end
  end
  return flag
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  name = "Hello, " + name
  return name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s=="")
    return false
  end
  s=s.upcase
  # puts s+ s[0]
  if (s[0]>"A" && s[0]<"Z") && !(s[0] == "A" || s[0] == "E" || s[0] == "I" || s[0] == "O" || s[0] == "U")
    return true
  else
    return false
  end
end


def binary_multiple_of_4? s
  # YOUR CODE 
  #check for binary
  flag = false
  if s.length == 0
    flag = false
  elsif s !~ /[^01]/
    if Integer(s).remainder(4) == 0
      flag =true
    else
      flag=false
    end
  else
    flag=false
  end
  return flag
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(i, j)
    if i == "" || j <= 0
      raise ArgumentError.new("Something went wrong!")
    end
    @isbn = i
    @price = j
  end
  
  #getter methods
  def isbn
    @isbn
  end
  def price
    @price
  end
  
  # setter methods
  def isbn=(value)
    @isbn = value
  end
  def price=(value)
    @price = value
  end
  
  def price_as_string
    price = "$" + "%.2f" % @price
    return price
  end
end
