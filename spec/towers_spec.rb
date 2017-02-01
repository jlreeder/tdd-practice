require 'towers'

describe 'TowersOfHanoi' do
  subject(:game) { TowersOfHanoi.new }

  describe '#initialize' do
    it 'sets up an accessible grid of towers' do
      expect(subject.towers).to be_an(Array)
    end

    it 'sets up a grid with three towers' do
      expect(subject.towers.length).to eq(3)
    end

    it 'initializes three discs' do
      expect(subject.towers.flatten.length).to eq(3)
    end

    it 'puts all three discs on the first tower' do
      expect(subject.towers[0]).to eq([3, 2, 1])
    end
  end

  describe '#move'

  describe '#won?'
end
