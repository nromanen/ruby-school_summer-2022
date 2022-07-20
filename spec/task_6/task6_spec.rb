require_relative '../../task_6/merge'
require_relative '../../task_6/rainfall'
require_relative '../../task_6/pangram'
require_relative '../../task_6/sq_in_rect'

describe 'Merge' do
  it 'should implement a function that models the process of merging all of the tile values in a single row.' do
    expect(merge([2, 0, 2, 2])).to eq([4, 2, 0, 0])
    expect(merge([2, 0, 2, 4])).to eq([4, 4, 0, 0])
    expect(merge([0, 0, 2, 2])).to eq([4, 0, 0, 0])
  end
end

describe 'Rainfall - mean' do
  it 'should return the average of rainfall for the city town and the strng data or data1' do
    data =
      'Rome:Jan 81.2,Feb 63.2,Mar 70.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,' \
      "Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9 \n" \
      'London:Jan 48.0,Feb 38.9,Mar 39.9,Apr 42.2,May 47.3,Jun 52.1,Jul 59.5,' \
      "Aug 57.2,Sep 55.4,Oct 62.0,Nov 59.0,Dec 52.9\n" \
      'Beijing:Jan 3.9,Feb 4.7,Mar 8.2,Apr 18.4,May 33.0,Jun 78.1,Jul 224.3,' \
      "Aug 170.0,Sep 58.4,Oct 18.0,Nov 9.3,Dec 2.7\n" \
      'Lima:Jan 1.2,Feb 0.9,Mar 0.7,Apr 0.4,May 0.6,Jun 1.8,Jul 4.4,' \
      'Aug 3.1,Sep 3.3,Oct 1.7,Nov 0.5,Dec 0.7'
    expect(mean('London', data)).to eql(51.199999999999996)
    expect(mean('Beijing', data)).to eql(52.416666666666664)
  end
end

describe 'Rainfall - variance' do
  it 'should return the variance of rainfall for the city town and the strng data or data1.' do
    data =
      'Rome:Jan 81.2,Feb 63.2,Mar 70.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,' \
      "Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9 \n" \
      'London:Jan 48.0,Feb 38.9,Mar 39.9,Apr 42.2,May 47.3,Jun 52.1,Jul 59.5,' \
      "Aug 57.2,Sep 55.4,Oct 62.0,Nov 59.0,Dec 52.9\n" \
      'Beijing:Jan 3.9,Feb 4.7,Mar 8.2,Apr 18.4,May 33.0,Jun 78.1,Jul 224.3,' \
      "Aug 170.0,Sep 58.4,Oct 18.0,Nov 9.3,Dec 2.7\n" \
      'Lima:Jan 1.2,Feb 0.9,Mar 0.7,Apr 0.4,May 0.6,Jun 1.8,Jul 4.4,' \
      'Aug 3.1,Sep 3.3,Oct 1.7,Nov 0.5,Dec 0.7'
    expect(variance('London', data).to_i).to eql(57)
    expect(variance('Beijing', data).to_i).to eql(4808)
  end
end

describe 'Pangram' do
  it 'should detect whether or not it is a pangram' do
    expect(pangram?('The quick brown fox jumps over the lazy dog.')).to eq(true)
    expect(pangram?('This is not a pangram.')).to eq(false)
  end
end

describe 'Rectangle into Squares' do
  it 'should cut rectangle into square' do
    expect(sq_in_rect(5, 5)).to eql(nil)
    expect(sq_in_rect(5, 3)).to eql([3, 2, 1, 1])
  end
end
