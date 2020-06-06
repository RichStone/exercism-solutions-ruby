class Triangle
  attr_reader :sides

  def initialize(input)
    @sides = input
  end

  def equilateral?
    return false unless is_triangle?
    sides.uniq.count == 1
  end

  def isosceles?
    return false unless is_triangle?
    sides.uniq.count == 1 || sides.uniq.count == 2 && valid_proportions?
  end

  def scalene?
    return false unless is_triangle?
    sides.uniq.count == 3
  end

  def is_triangle?
    sorted = sides.sort
    greatest_side = sorted.pop
    greatest_side < sorted.sum
  end

  def all_sides_present?
    sides.any? { |n| n <= 0 }
  end

  def valid_proportions?
    sides.max <= sides.sum / 2.0
  end
end