require './lib/caesar'

describe '#character_shift' do
  it 'Shifts a 0 to 3, with shift 3' do
    expect(character_shift(48, 3, 57, 10)).to eql(51)
  end

  it 'Correctly wraps a number' do
    expect(character_shift(56, 3, 57, 10)).to eql(49)
  end

  it 'Correctly wraps a letter' do
    expect(character_shift(88, 5, 90, 26)).to eql(67)
  end
end

describe '#caesar_cipher' do
  it 'Correctly encode string with exclamation mark' do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
end
