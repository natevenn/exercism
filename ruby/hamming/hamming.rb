class Hamming
  VERSION = 1
  def self.compute(strand_1, strand_2)
    if strand_1.length != strand_2.length
      raise(ArgumentError)
    end
    dna_1 = strand_1.chars
    dna_2 = strand_2.chars
    count = 0
    dna_comparer = dna_1.zip(dna_2)
    counter = dna_comparer.count do |strand|
      strand[0] != strand[1]
    end
    counter
  end
end

# improved the code using an enumerable
# instead of an if else statement inside a loop
