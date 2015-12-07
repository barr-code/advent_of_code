class DayOne
  def evaluate(string)
    if string == "("
      1
    elsif string == ")"
      -1
    end
  end

  def add_string(string)
    values = string.split('')
    values = values.map {|v| evaluate(v)}
    values.inject(:+)
  end

  def find_position_of_minus_one(string)
    floor = 0
    position = nil
    values = string.split('').map{|v| evaluate(v)}
    values.each_with_index do |value, index|
      floor += value
      if floor == -1 && !position
        position = index + 1
      end
    end
    return position
  end
end
