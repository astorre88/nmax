# frozen_string_literal: true

RSpec.describe Nmax do
  it 'returns a max number' do
    input = StringIO.new
    input << '
      text 123 test some 34.5
      information 1 and 133.
      1000
      sdfsdf
      1d3f5
    '
    input.rewind
    expect(Nmax::FindMax.call(input, '2')).to match_array([133, 1000])
  end
end
