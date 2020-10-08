# Convert a number to a string, the contents of which depend on the number's factors.

# If the number has 3 as a factor, output 'Pling'.
# If the number has 5 as a factor, output 'Plang'.
# If the number has 7 as a factor, output 'Plong'.
# If the number does not have 3, 5, or 7 as a factor, just pass the number's digits straight through.

# Examples
# 28's factors are 1, 2, 4, 7, 14, 28.
# In raindrop-speak, this would be a simple "Plong".
# 30's factors are 1, 2, 3, 5, 6, 10, 15, 30.
# In raindrop-speak, this would be a "PlingPlang".
# 34 has four factors: 1, 2, 17, and 34.
# In raindrop-speak, this would be "34".

# Your Job
# Write a program that asks the user for an Integer and prints a String based on the rules above.

# Examples
# When the input is 1

#   "Enter an integer"
#   1
#   "1"

# When the input is 5

#   "Enter an integer"
#   5
#   "Plang"

# When the input is 21

#   "Enter an integer"
#   5
#   "PlingPlang"


p "Enter an integer"

n = gets.chomp.to_i

div3 = n%3 == 0
div5 = n%5 == 0
div7 = n%7 == 0


if !(div3 | div5 | div7)
  p n
else
  res = ""
  if div3 
    res = res + "Pling"
  end
  if div5 
    res = res + "Plang"
  end
  if div7
    res = res + "Plong"
  end 
  p res
end