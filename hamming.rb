# Calculate the Hamming difference between two DNA strands.

# A mutation is simply a mistake that occurs during the creation or copying of a nucleic acid, in particular DNA.
#   Because nucleic acids are vital to cellular functions, mutations tend to cause a ripple effect throughout the cell.
#   Although mutations are technically mistakes, a very rare mutation may equip the cell with a beneficial attribute.
#   In fact, the macro effects of evolution are attributable by the accumulated result of beneficial microscopic 
#   mutations over many generations.

# The simplest and most common type of nucleic acid mutation is a point mutation,
#   which replaces one base with another at a single nucleotide.

# By counting the number of differences between two homologous DNA strands taken from different genomes
#   with a common ancestor, we get a measure of the minimum number of point mutations that could have
#   occurred on the evolutionary path between the two strands.

# This is called the 'Hamming distance'.

# It is found by comparing two DNA strands and counting how many of the nucleotides 
#   are different from their equivalent in the other string.

# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^

# The Hamming distance between these two DNA strands is 7.

# Your Job
# Define a class called `Dna` with an attribute accessor called `strand`
# and an instance method called `distance_between` that accepts
# a different instance of the `Dna` class, and returns an Integer.

# Example

#   g_dna = Dna.new
#   g_dna.strand = "G"
#   t_dna = Dna.new
#   t_dna.strand = "T"

#   p g_dna.distance_between(t_dna) # => 1


class Dna 

  attr_accessor :strand

  def distance_between(other)
    ours = self.strand.split("")
    theirs = other.strand.split("")

    if ours.length != theirs.length
      return("ERROR")
    end

    counter = []
    i = 0
    ours.each do 
      counter.push(i)
      i = i+1
    end
    
    res = 0
    counter.each do |j|
      us = ours[j]
      them = theirs[j]

      if us != them 
        res = res+1
      end
      
    end
    
    return(res)

  end
end