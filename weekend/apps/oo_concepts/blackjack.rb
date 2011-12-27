require_relative 'deck'
require_relative 'player'
require_relative 'dealer'

class BlackJack
  include Deck
  
  def initialize
    @dealer = Dealer.new(self)
    @cards = @dealer.shuffle_cards(new_deck)
    @players = [@dealer]
  end
  
  def dealer
    @dealer
  end
  
  def players
    @players
  end
  
  def cards
    @cards
  end
  
  def add_player
    @players << Player.new(self)
  end
  
  
end

__END__

$: << Dir.pwd
require 'blackjack'
game = BlackJack.new
3.times { game.add_player }
game.dealer.deal
