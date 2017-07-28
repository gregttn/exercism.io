class Pangram
  def self.pangram?(phrase)
    lowerCasePhrase = phrase.downcase
    ('a'..'z').all? { |letter| lowerCasePhrase.include?(letter)}
  end
end

module BookKeeping
  VERSION = 4
end
