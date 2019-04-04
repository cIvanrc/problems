class JadenCase

  def initialize(sentence)
    @sentence = sentence
  end

  def to_jaden_case
    @sentence.split(" ").map(&:capitalize).join(" ")
  end
end
