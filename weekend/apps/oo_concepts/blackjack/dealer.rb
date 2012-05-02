class Dealer < Player
  
  def shuffle_cards(cards_to_be_shuffled)
    cards_to_be_shuffled.sort_by do 
      rand
    end
  end
  
  def deal
    2.times do
      game.players.each do |player|
        player.hit
      end
    end
  end
  
end