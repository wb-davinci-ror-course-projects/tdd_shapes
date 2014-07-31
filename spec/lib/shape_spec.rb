require 'rspec'
require './lib/shape'

describe Shape do
  it 'should be a Shape' do
    expect(subject).to be_a(Shape)
  end

  describe '#to_s' do
    let(:expected_string) do
      'A collection of lines and/or curves ' \
        'that form a closed region in a plane.'
    end
    it 'returns a descriptive string' do
      expect(subject.to_s).to eq(expected_string)
    end
  end
end
