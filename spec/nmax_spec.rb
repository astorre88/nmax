# frozen_string_literal: true

RSpec.describe Nmax do
  it 'returns a max number' do
    expect(Nmax::FindMax.call([2, 1, 3], 2)).to eq([3, 2])
  end
end
