# Add some code to this program so that it:
#  prints the history of answers given while being pestered whether we're there yet.

# Note: all the recorded answers should be lowercase

p "Are we there yet?"

answer = gets.chomp.downcase
res = []
while answer != "yes"
  res << answer
  p "Are we there yet?"
  
  answer = gets.chomp.downcase

  # p res
end

res << answer

if res.length > 1
  p res
end