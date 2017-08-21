class Phrase
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    words = Hash.new(0)

    sentence.downcase.gsub(/[^a-z'0-9]/, " ").split(" ")
      .map { |word| word.gsub(/^'|'$/, "") }
      .each { |word| words[word] += 1 }

    words
  end
end

module BookKeeping
  VERSION = 1
end
