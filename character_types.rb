# Write a program that:
#   Asks the user to enter a sentence
#   Counts the total number of letters in the given sentence
#   Counts the total number of spaces in the given sentence
#   Counts the total numbers of digits in the given sentence
#   and prints the intormation out

# Example:

#  "Enter a sentence:"
#  here 12 plus 25
#  "Number of letters in the string is: 8"
#  "Number of spaces in the string is: 3"
#  "Number of digits in the string is: 4"

p "Enter a sentence:"

vals = gets.chomp.split("")

lets = 0
spaces = 0
digs = 0

nums = ["1","2","3","4","5","6","7","8","9","0"]

vals.each do |char|
  if nums.include? char
    digs = digs +1
  elsif char == " "
    spaces = spaces + 1
  else
    lets = lets+1      
  end
  
end

p "Number of letters in the string is: " + lets.to_s
p "Number of spaces in the string is: " + spaces.to_s
p "Number of digits in the string is: " + digs.to_s