class Raindrops
  @@mapping = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
  def self.convert(number)
    result = @@mapping.reject {|key,value| number % key != 0}.values.join

    result.empty? ? number.to_s  : result
  end
end

module BookKeeping
  VERSION = 3
end
