# A pangram is a sentence using every letter of a given alphabet at least once.
# Eg: the quick brown fox jumps over the lazy dog.

class Pangram
  def self.pangram?(phrase)
    phrase.upcase.gsub(/[^A-Z]/,"").chars.uniq.sort == ('A'..'Z').to_a
  end
end