# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

def less_100(array)
  index = 0
  answer = []
  while index < array.length
    if array[index] < 100
      answer << array[index]
      index += 1
    else 
      index += 1
    end
  end
  return answer
end
p less_100([99,101,88,4,2000,50])

# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]
# loop through input, double number and return new array

def double(array)
  index = 0
  doubled = []
  while index < array.length
    doubled << array[index]*2
    index += 1
  end
  return doubled
end
p double([4,2,5,99,-4])

# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

# (After you complete the exercise successfully, I recommend watching this video: Think Like a Software Engineer Episode #50)

def greatest_value(array)
  index = 0
  largest = 0
  while index < array.length-1
    if array[index] > array[index+1]
      largest = array[index]
      index += 1
    else
      largest = array[index+1]
      index += 1
    end
  end
  return largest
end
p greatest_value([5, 17, -4, 12, 20])

# Write a function that accepts an array of numbers and returns the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24

# Explanation: (1 x 2 x 3 x 4) = 24

def product(array)
  index = 0
  answer = array[0]
  while index < array.length
    answer = answer * array[index]
    index += 1
  end
  return answer
end
p product([1,2,3,4])

# Given an array, write a function that returns an array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

def reverse(array)
  index = array.length-1
  new_array = []
  while index >= 0
    new_array << array[index]
    index -= 1
  end
  return new_array
end
p reverse([1,2,3,4,5])

# Given an array of numbers, write a function that returns a new array in which only select numbers from the original array are included, based on the following details:

# The new array should always start with the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right. This number gets added to the new array. If this next number happens to be a 4, then the next number after that is the one four spaces to the right. And so on and so forth until the end of the array is reached.

# Input:
# [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]

# Output:
# [2, 3, 1, 2, 2, 1, 5, 2, 2]

def skip_it(array)
  index = 0
  answer = []
  while index < array.length
    answer << array[index]
    index = index + array[index]
  end
  return answer
end
p skip_it([2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2])