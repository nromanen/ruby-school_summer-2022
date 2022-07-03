require_relative '../../task_3/task_7'

describe 'Length and two values' do
  it 'should return new array filled with two given values alternating' do
    expect(alternate(5, true, false)).to eq([true, false, true, false, true])
    expect(alternate(20, 'blue',
                     'red')).to eq(%w[blue red blue red blue red blue red blue red blue red blue red blue red blue red
                                      blue red])
    expect(alternate(0, 'lemons', 'apples')).to eq([])
  end
end
