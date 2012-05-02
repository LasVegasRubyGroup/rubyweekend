class Player
  
  def initialize(game)
    @game = game
    @hand = []
  end
  
  def game
    @game
  end
  
  def hand
    @hand
  end
  
  def take_card(card)
    @hand << card
  end
  
  def hit
    next_card = game.cards.shift
    take_card(next_card)
  end
  
  def stay
    
  end
  
  def points
    #@hand.inject(0) { |sum, card| sum += Deck::CARDS[card[0]] }
    sum = 0
    @hand.each do |card|
      sum += Deck::CARDS[card[0]]
    end
    
    sum
  end
  
end