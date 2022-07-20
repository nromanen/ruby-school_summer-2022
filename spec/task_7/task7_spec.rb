require_relative '../../task_7/sum'
require_relative '../../task_7/check_password'

describe 'Sum' do
  it 'should sum values from block' do
    expect(sum([4, 0, -12]) { |e| e.negative? ? e**2 : e }).to eq(148)
    expect(sum([5, 9, -7]) { |e| e.negative? ? e**2 : e }).to eq(63)
    expect(sum([11, 47, -78]) { |e| e.negative? ? e**2 : e }).to eq(6142)
  end
end

describe 'Check password' do
  it 'should check password' do
    admin = admin_check_password('u1', 'p1')
    expect(sum([4, 0, -12]) { |e| e.negative? ? e**2 : e }).to eq(148)
    expect(admin.call('u1', 'p1')).to eql(true)
    expect(admin.call('u2', 'p2')).to eql(false)
    expect(admin.call('aaa', 'aaa')).to eql(false)
  end
end
