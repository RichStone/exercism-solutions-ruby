require 'set'

class Pangram
  def self.pangram?(sentence)
    unique_letters = sentence.scan(/[a-zA-Z]/).map(&:downcase).to_set
    letters_amount_in_alphabet = 26

    unique_letters.count == letters_amount_in_alphabet
  end
end