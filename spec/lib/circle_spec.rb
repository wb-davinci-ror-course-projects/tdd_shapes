require 'rspec'
require './lib/shape'
require './lib/circle'

describe Circle do
  it 'should be a Circle' do
    expect(Circle.new(5)).to be_a(Circle)
  end

  it 'should be a Shape' do
    expect(Circle.new(5)).to be_a(Shape)
  end

  describe '#initialize' do
    it 'takes one argument of radius' do
      circle = Circle.new(5)
      expect(circle).to be_a(Circle)
    end
  end

  describe '#area' do
    it 'returns the area of the circle' do
      expected_area = Math::PI * 5**2
      actual_area = Circle.new(5).area

      expect(actual_area).to eq(expected_area)
    end
  end

  describe '#circumference' do
    it 'returns the circumference of the circle' do
      expect(Circle.new(5).circumference).to eq(
        2 * Math::PI * 5
      )
    end
  end
end
