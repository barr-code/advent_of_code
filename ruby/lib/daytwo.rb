class DayTwo
  def get_values(string)
    string.split("x").map {|x| x.to_i}
  end

  def surface_area(string)
    values = get_values(string).sort
    3*values[0]*values[1] + 2*values[1]*values[2] + 2*values[0]*values[2]
  end

  def combined_surface_area(string)
    array = string.split(' ')
    array.map{|x| surface_area(x)}.inject(:+)
  end

  def perimeter_and_volume(string)
    values = get_values(string).sort
    (2*values[0] + 2*values[1]) + values.inject(:*)
  end

  def combined_perimeter_and_volume(string)
    array = string.split(' ')
    array.map{|x| perimeter_and_volume(x)}.inject(:+)
  end
end
