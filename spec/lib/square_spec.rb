require 'rspec'
require './lib/shape'
require './lib/square'

describe Square do
  let(:length_of_side) { 4 }
  subject { Square.new(length_of_side) }
  it 'should be a Square' do
    expect(subject).to be_a(Square)
  end

  it 'should be a Shape' do
    expect(subject).to be_a(Shape)
  end

  describe '#initialize' do
    it 'takes one argument, the size of the side' do
      expect(subject).to be
    end
  end

  describe '#length' do
    context 'for a square with a side length of 4' do
      let(:length_of_side) { 4 }
      it 'returns the length of the side' do
        expect(subject.length).to eq(length_of_side)
      end
    end

    context 'for a square with a side length of 2' do
      let(:length_of_side) { 2 }
      it 'returns the length of the side' do
        expect(subject.length).to eq(length_of_side)
      end
    end
  end

  describe '#area' do
    context 'for a square with a side length of 4' do
      let(:length_of_side) { 4 }
      it 'returns the area of the square' do
        expect(subject.area).to eq(length_of_side**2)
      end
    end

    context 'for a square with a side length of 2' do
      let(:length_of_side) { 2 }
      it 'returns the area of the square' do
        expect(subject.area).to eq(length_of_side**2)
      end
    end
  end

  describe '#perimeter' do
    context 'for a square with a side length of 4' do
      let(:length_of_side) { 4 }
      it 'returns the perimeter of the square' do
        expect(subject.perimeter).to eq(16)
      end
    end

    context 'for a square with a side length of 2' do
      let(:length_of_side) { 2 }
      it 'returns the perimeter of the square' do
        expect(subject.perimeter).to eq(8)
      end
    end
  end
end
