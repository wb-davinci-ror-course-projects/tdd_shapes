require 'rspec'
require './lib/shape.rb'
require './lib/triangle.rb'

describe Triangle do
  let(:base) { 2 }
  let(:height) { 4 }
  subject { Triangle.new(base, height) }
  it 'should should be a Triangle' do
    expect(subject).to be_a(Triangle)
  end

  it 'should should be a shape' do
    expect(subject).to be_a(Shape)
  end

  describe '#initialize' do
    it 'should take two arguments the base and the height' do
      expect(subject).to be_a(Triangle)
    end
  end

  describe '#area' do
    it 'returns the area of a triangle' do
      expected_area = 0.5 * 2 * 4
      actual_area = Triangle.new(2.0, 4).area

      expect(actual_area).to eq(expected_area)
    end
  end

  describe '#right_angle?' do
    it 'returns true if triangle has a right angle' do
      expect(subject.right_angle?(3, 4, 5)).to eq(true)
    end

    it 'returns false if triangle does not have a right triangle' do
      expect(subject.right_angle?(1,1,2)).to eq(false)
    end
  end
end
