class DayOne
  def evaluate(string)
    string == "(" ? 1 : -1
  end

  def convert_string_to_number_array(string)
    string.split('').map{|v| evaluate(v)}
  end

  def add_string(string)
    values = convert_string_to_number_array(string)
    values.inject(:+)
  end

  def find_position_of_minus_one(string)
    floor = 0
    position = nil
    values = convert_string_to_number_array(string)
    values.each_with_index do |value, index|
      floor += value
      position = index + 1 if floor == -1 && !position
    end
    return position
  end
end
