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

def largest_product(array)
  index = 0
  largest = 0
  new_array = []
  while index < array.length
    if array[index] < 0
      array[index] = array[index]*-1
      new_array << array[index]
      index += 1
    elsif array[index] >= 0
      new_array << array[index]
      index += 1
    end
  end
  new_array = new_array.sort
  return new_array[array.length-1]*new_array[array.length-2]
end
p largest_product([5, -2, 1, -9, -7, 2, 6])