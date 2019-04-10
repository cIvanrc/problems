class Deck
  attr_reader :cards

  def initialize
    @cards = (0..51)
  end

  def shuffle
    # your code here
    #@cards.shuffle
  end

  def deal
    # your code here
  end
end

class OutOfCardsError < StandardError; end
