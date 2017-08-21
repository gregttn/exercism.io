 class Prime
   def self.nth(index)
    raise ArgumentError if index < 1

    (0..index).reduce(0) { |last_prime, x| last_prime.next_prime() }
   end
 end

 class Integer
   def is_prime?
     return false if self <= 0

     2.upto(Math.sqrt(self)).all? { |x| self % x != 0}
   end

   def next_prime()
     n = self + 1
     n = n + 1 until n.is_prime?
     n
   end
 end

 module BookKeeping
   VERSION = 1
 end
