class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError unless strand_a.length == strand_b.length
    pairs = strand_a.chars.zip(strand_b.chars)
    pairs.count { |(first, second)| first != second }
  end
end

module BookKeeping
  VERSION = 3
end
