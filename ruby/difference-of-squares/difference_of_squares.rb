class Squares
  attr_reader :numbers
  def initialize(number)
    @numbers = 0.upto(number)
  end

  def square_of_sum
    numbers.inject(:+) ** 2
  end

  def sum_of_squares
    numbers.inject { |sum, number| sum + (number**2) }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
