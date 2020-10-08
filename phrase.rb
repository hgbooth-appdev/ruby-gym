# Most commonly, we define classes to represent things; those things have attributes; and we define instance methods to operate on those attributes and return useful values.

# Phrase
# Convert a phrase to its acronym.

# Techies love their TLA (Three Letter Acronyms)!

# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).
 
# Your Job
# Define a class called `Phrase` with:

# An attribute accessor called `body` which will store a String.
# An instance method called `abbreviate` that will return a String: the uppercase first letter of each word in the phrase.

# Examples

#   a = Phrase.new
#   a.body = "Portable Network Graphics"
#   a.abbreviate # => "PNG"

#   b = Phrase.new
#   b.body = "Complementary metal-oxide semiconductor"
#   b.abbreviate # => "CMOS"

class Phrase

  attr_accessor :body

  def abbreviate

    words = self.body.gsub(/[^a-z0-9\s]/i, " ").upcase.split(" ")

    int = []

    words.each do |word|
      
      word = word.split("")
      firstL = word[0]
      int.push(firstL)

    end

    res = ""

    int.each do |letter|
      res = res + letter    
    end
    
    # p res
    return res
  end

end


a = Phrase.new
a.body = "Portable Network Graphics"
a.abbreviate # => "PNG"