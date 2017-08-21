class Bob
  @@responses = {
    :other => "Whatever.",
    :yelling => "Whoa, chill out!",
    :question => "Sure.",
    :silence => "Fine. Be that way!"
  }

  def self.hey(remark)
    sentence = Sentence.new(remark)

    if sentence.silence?
      @@responses[:silence]
    elsif sentence.yelling?
      @@responses[:yelling]
    elsif sentence.question?
      @@responses[:question]
    else
      @@responses[:other]
    end
  end
end

class Sentence
  attr_accessor :content

  def initialize(content)
    @content = content.strip
  end

  def silence?
    content.empty?
  end

  def yelling?
    content == content.upcase && content.downcase != content
  end

  def question?
    content.end_with?("?")
  end
end

module BookKeeping
  VERSION = 1
end
