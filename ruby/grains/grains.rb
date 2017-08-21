class Grains
  @@squares = (1..64)

  def self.square(square)
    raise ArgumentError, "Invalid square index" unless @@squares.include?(square)

    2 ** (square - 1)
  end

  def self.total
    @@squares.reduce {|total, square| total + Grains.square(square)}
  end
end

module BookKeeping
  VERSION = 1
end
