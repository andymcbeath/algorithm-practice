# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

def lessthan(nums)
# Write a function that returns whether a given number is a prime number.
def prime(integer)
  index = 2
  while index < integer
    if integer % index == 0
      return false
    end
    index += 1
  end 
  return true
end

puts prime(4) 

# Write a function that prints out every number from 1 to N, with the following exceptions:
# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".
def fizzbuzz(number)
  index = 1
  answer = []
  while index < number
    if index % 5 == 0 && index % 3 == 0
      answer << "FIZZBUZZ"
      index += 1
    elsif index % 3 == 0
      answer << "FIZZ"
      index += 1
    elsif index % 5 == 0
      answer << "BUZZ"
      index += 1
    else
      answer << index
      index += 1
    end  
  end
  return answer
end
p fizzbuzz(45)


# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)

def findfib(number)
  x=0
  y=1
  (number-1).times do
    next_num = x + y 
    x = y
    y = next_num
  end
  return x
end
p findfib(9)


# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

def combinestring(x,y)
  index = 0
  combined = []
  while index < x.length 
    index2 = 0
    while index2 < y.length
    combined << x[index]+y[index2]
    index2 += 1
    end
  index += 1
  end
  return combined
end
p combinestring(["a", "b", "c"], ["d", "e", "f", "g"])

# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

def combinestring2(x)
  index = 0
  combined = []
  while index < x.length
    index2 = 0
    while index2 < x.length
      combined << x[index]+x[index2]
      index2 += 1
    end
  index += 1
  end
  return combined
end
p combinestring2(["a", "b", "c", "d"])

# Find the largest product of any two numbers within a given array.

# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)

# def largest_product(array)
#   index = 0
#   largest = 0
#   while index < array.length
#     if array[index] > largest
#       largest = array[index]
#       index += 1
#     else
#       index += 1
#     end  
#   end
#   return largest
# end
# end
# p largest_product([5, -2, 1, -9, -7, 2, 6])
