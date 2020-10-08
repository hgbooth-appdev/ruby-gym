# We have a program to encode our messages, now can you write a way to decode them? 
# Remember our sercret code: a = 1, e = 2, i = 3, o = 4, u = 5.  
# Your program should:
# - ask for an encoded message
# - decode the message
# - print the decoded message.

# (Make sure to capitalize the first word in the decoded message)

p "Enter in the secret you want to decode"

m = gets.chomp.gsub("1", "a").gsub("2", "e").gsub("3", "i").gsub("4", "o").gsub("5", "u").capitalize

p m

