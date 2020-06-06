class Series
  attr_reader :series_arr

  def initialize(series)
    @series_arr = series.scan /\w/
  end

  def slices(step)
    raise ArgumentError.new(
      "You can't look for consecutive digits larger than the amount of digits itself!"
    ) if step > series_arr.size

    # no need to compute anything with step == 1
    return series_arr if step == 1 
      
    consecutives = series_arr.each_cons(step).to_a
    consecutives.map(&:join)
  end

end