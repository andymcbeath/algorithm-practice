
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

