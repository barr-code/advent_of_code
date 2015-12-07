require 'dayone'

describe DayOne do

  day_one = DayOne.new

  it 'assigns a value of plus one to (' do
    expect(day_one.evaluate('(')).to eq 1
  end

  it 'assigns a value of minus one to )' do
    expect(day_one.evaluate(')')).to eq -1
  end

  it 'can add multiple string inputs together' do
    expect(day_one.add_string('()')).to eq 0
  end

  it 'finds position of negative value' do
    expect(day_one.find_position_of_minus_one('(()))')).to eq 5
  end

  it 'finds position of only first negative value' do
    expect(day_one.find_position_of_minus_one('())()')).to eq 3
  end
end
