
# Two-fer or 2-fer is short for two for one. One for you and one for me.

# "One for X, one for me."
# When X is a name or "you".

# If the given name is "alice", the result should be "One for Alice, one for me." 

# If no name is given, the result should be "One for you, one for me."

p "Enter a name:"

n = gets.chomp

if n.length <1
  n = "you"
else
  n = n.capitalize
end

p "One for " + n+ ", one for me."