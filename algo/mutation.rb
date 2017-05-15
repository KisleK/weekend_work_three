# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.



##the mutation method will need to compare the original(base word) to the mutated word(random order) A good way to check this is by utilizing.include? which will check one set of words to see if the characters are similar. However I need to see if each letter is in the word. This leads to an each loop. after some research Ruby doc shows my initial thought of chars is accurate I am currently using it wrong. I need to update my each loop to be _chars.

## I now know my each loop will be base_word.each_chars do | letter |
# chars will break the string down to single letters. 
#if the mutation has the correct letters it will return false.
# 

def mutation?(base_word, mutation)
  base_word.each_char do |letter|
    if mutation.include? (letter)
    true
    else
    false
    end
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end