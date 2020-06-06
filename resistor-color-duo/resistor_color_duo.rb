class ResistorColorDuo
  RESISTORS = {
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' => '9'
  }

  def self.value(color)
     (RESISTORS[color[0]] + RESISTORS[color[1]]).to_i
  end
end
