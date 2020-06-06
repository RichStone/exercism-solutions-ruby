class Darts
  
  @@inner_radius_sqr = 1 ** 2
  @@middle_radius_sqr = 5 ** 2
  @@outer_radius_sqr = 10 ** 2

  @@inner_score = 10
  @@middle_score = 5
  @@outer_score = 1
  @@outside_score = 0

  def initialize(x_hit, y_hit)
    @pythagoras = x_hit ** 2 + y_hit ** 2
  end

  def score
    # order is defined as of the approximate assumed probability of the event
    if @pythagoras <= @@outer_radius_sqr && @pythagoras > @@middle_radius_sqr
      @@outer_score
    elsif @pythagoras <= @@middle_radius_sqr && @pythagoras > @@inner_radius_sqr
      @@middle_score
    elsif @pythagoras > @@outer_radius_sqr || @pythagoras > @@outer_radius_sqr
      @@outside_score
    else
      @@inner_score
    end

  end

end