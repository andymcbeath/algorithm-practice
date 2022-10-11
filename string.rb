# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

def money(string)
  index = 0
  boolean = "false"
  while index < string.length
    if string[index] == "$"
      boolean = "true"
      index += 1
    else
      index += 1
    end
  end
  return boolean
end

p money("i hate $ but i love money i know i know im crazy")
p money("abcdefghijklmnopqrstuvwxyz")

# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

def capitalize(string)
  index = 0
  answer = ""
  while index < string.length
    if index % 2 == 1
      answer += string[index].upcase
      index += 1
    else
      answer += string[index]
      index += 1
    end
  end
  return answer
end

p capitalize("hello, how are your porcupines today?")

# Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”

def first_duplicate(string)
  index = 0
  duplicate = ""
  while index < string.length
    if string[index] == string[index + 1]
      duplicate = string[index]
      return duplicate
    else
      index += 1
    end
  end
end

p first_duplicate("abcdefghhijkkloooop")

# Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

# Input: “racecar”
# Output: true

# Input: “baloney”
# Output: false

def palindrome(string)
  index = string.length - 1
  reverse = ""
  boolean = "false"
  while index >= 0
    reverse += string[index]
    index -= 1
  end

  if reverse == string
    boolean = "true"
  end
  return boolean
end

p palindrome("baloney")

# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0

# def samesies(string1, string2)
#   index = 0
#   difference = 0
#   while index < string1.length
#     if string1[index] == string2[inde
#       index += 1
#     else
#       difference += 1
#       index += 1
#     end
#   end
#   return difference
# end

# p samesies("ABCDEFG", "ABCXEOG")


# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array. Input: ["a", "b", "c", "d"] Output: ["ab", "ac", "ad", "ba", "bc...

# Input: ["a", "b", "c", "d"]
  
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

#Use a while loop to go through each letter
#Use an index to get through each one, loop through while < array.lenth
#have second index that loops through array again

def combostring(array)
  index = 0
  index2 = 0
  new_array = []
  while index < array.length
    while index2 < array.length
      if index != index2
        new_array << array[index]+array[index2]
      end
      index2 += 1
    end
    index2 = 0
    index += 1
  end
  return new_array
end

p combostring(["a", "b", "c", "d"])
p combostring(["a", "a", "c", "d"])