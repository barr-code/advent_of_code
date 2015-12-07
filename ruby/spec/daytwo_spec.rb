require 'daytwo'

describe DayTwo do
  day_two = DayTwo.new

  it 'separates strings into array of numbers' do
    expect(day_two.get_values('1x2x3')).to eq [1,2,3]
  end

  it 'returns a different array for different value' do
    expect(day_two.get_values('4x5x6')).to eq [4,5,6]
  end

  it 'finds surface area plus slack of box with given dimensions' do
    expect(day_two.surface_area('2x3x4')).to eq 58
  end

  it 'finds differnt areas given different areas' do
    expect(day_two.surface_area('1x1x10')).to eq 43
  end

  it 'adds surface areas of many inputs' do
    expect(day_two.combined_surface_area('2x3x4 1x1x10')).to eq 101
  end

  it 'calculates smallest perimeter + total volume' do
    expect(day_two.perimeter_and_volume('1x1x10')).to eq 14
  end

  it 'calculates different values for different inputs' do
    expect(day_two.perimeter_and_volume('2x3x4')).to eq 34
  end

  it 'calculates combined perimeter and volume for multiple inputs' do
    expect(day_two.combined_perimeter_and_volume('1x1x10 2x3x4')).to eq 48
  end
end
