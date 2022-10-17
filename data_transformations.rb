
# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }


def combine(firstA, integer)
  new_hash = {}
  index = 0
  while index < firstA.length
    new_hash[firstA[index]] = integer
    index += 1
  end
  return new_hash
end
#   firstA.each do |el|
#     new_hash[el] = integer
#   end
#   return new_hash
# end

p combine(["a", "e", "i", "o", "u"], 2)

# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

def keys_and_values(hash)
  new_array =[]
  hash.each do |k, v|
    new_array << k
    new_array << v
  end
  return new_array
end

p keys_and_values({"a" => 1, "b" => 2, "c" => 3, "d" => 4})


# Given a hash, create a new hash that has the keys and values switched.

# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

def switcharoo(hash)
  switched_hash = {}
  hash.each do |k,v|
    switched_hash[v] = k
  end
  return switched_hash
end

p switcharoo({"a" => 1, "b" => 2, "c" => 3})

# You are given a hash in format #A, and you are to return the same data as a hash using format #B, as specified below:

# Input:

# {
# 1 => ["A", "E", "I", "O", "U"]
# }

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }
# Input:

# {
# 1 => ["A", "E"],
# 2 => ["D", "G"]
# }

# Output:

# {
# 'a' => 1,
# 'd' => 2,
# 'e' => 1,
# 'g' => 2
# }

# Input:

# {
# 1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
# 2 => ["D", "G"],
# 3 => ["B", "C", "M", "P"],
# 4 => ["F", "H", "V", "W", "Y"],
# 5 => ["K"],
# 8 => ["J", "X"],
# 10 => ["Q", "Z"]
# }

# Output:

# {
# 'a' => 1,
# 'b' => 3,
# 'c' => 3,
# 'd' => 2,
# 'e' => 1,
# 'f' => 4,
# 'g' => 2,
# 'h' => 4,
# 'i' => 1,
# 'j' => 8,
# 'k' => 5,
# 'l' => 1,
# 'm' => 3,
# 'n' => 1,
# 'o' => 1,
# 'p' => 3,
# 'q' => 10,
# 'r' => 1,
# 's' => 1,
# 't' => 1,
# 'u' => 1,
# 'v' => 4,
# 'w' => 4,
# 'x' => 8,
# 'y' => 4,
# 'z' => 10
# }

def count_letters(array, point)
  new_hash = {}
  index = 0
  index2 = 1
  while index < array1.length
   if array1[index] != new_hash[index2] 
    new_hash[array1[index]] = 1
    index += 1
   else
    new_hash[array1[index]] += 1
    index +=1
   end
   index2 += 1
  end
  return new_hash
end

p count_letters(["A", "E"],1 ["D","G"], 2)