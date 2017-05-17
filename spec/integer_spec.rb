require_relative '../lib/extensions/integer'

describe '#look_and_say' do
  before { Integer.include Extensions::Integer }

  it 'returns the correct sequence' do
    expect(1.look_and_say.each.take(5)).to eq [1, 11, 21, 1211, 111221]
    expect(10.look_and_say.each.take(3)).to eq [10, 1110, 3110]
    expect(-23.look_and_say.each.take(3)).to eq [-23, -1213, -11121113]
  end
end
