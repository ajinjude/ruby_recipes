# https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
class SieveOfEratosthenes
  def self.sieve(limit)
    range = (2..limit).to_a
    range.each { |n| range -= (2..range.size/2).to_a.map{|x| x * n} }
    range
  end
end