module Deck
  CARDS = {
    "A" => 11,
    "K" => 10,
    "Q" => 10,
    "J" => 10,
    "T" => 10,
    "9" => 9,
    "8" => 8,
    "7" => 7,
    "6" => 6,
    "5" => 5,
    "4" => 4,
    "3" => 3,
    "2" => 2
  }
  
  SUITS = ["H", "S", "C", "D"]
  
  def new_deck
    all_cards = []
    CARDS.each_key do |card|
      SUITS.each do |suit|
        all_cards << card + suit
      end
    end
    
    return all_cards
  end
  
end