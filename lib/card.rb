
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    values.include?(value) ? (@value = value) : (raise ArgumentError, "#{value} is not a valid card value")
    suits = [:hearts, :spades, :clubs, :diamonds]
    suits.include?(suit) ? (@suit = suit) : (raise ArgumentError, "#{suit} is not a valid suit")
  end

  def to_s
    values = [1, 11, 12, 13]
    face_card = ["Ace", "Jack", "Queen", "King"]
    if values.include?(value)
      case value
        when 1
          face_value = face_card[0]
        when 11
          face_value = face_card[1]
        when 12
          face_value = face_card[2]
        when 13
          face_value = face_card[3]
      end
      return "#{face_value} of #{suit.to_s}"
    end
    return "#{value} of #{suit.to_s}"
  end

end
