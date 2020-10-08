# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

p "Enter a sentence:"

s = gets.chomp.downcase.split(" ")
res = 0

s.each do |word|
  lets = word.gsub(/[^0-9A-Za-z]/, '').split("")
  # p lets
  
  if lets.length > 2
    # p "here 1"
    if (lets[0] == "t") & (lets[1] == "h") & (lets[2] == "e")
      # p "here 2"
      if lets.length == 3
        # p "here 3"
        res = res+1
      end
    end
  end

end

p "'the' appeared " + res.to_s + " times"