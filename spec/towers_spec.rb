require 'towers'

describe 'TowersOfHanoi' do
  let(:game) { TowersOfHanoi.new }

  describe '#initialize' do
    subject { game.towers }

    it 'sets up an accessible grid of towers' do
      expect(subject).to be_an(Array)
    end

    it 'sets up a grid with three towers' do
      expect(subject.length).to eq(3)
    end

    it 'initializes three discs' do
      expect(subject.flatten.length).to eq(3)
    end

    it 'puts all three discs on the first tower' do
      expect(subject[0]).to eq([3, 2, 1])
    end
  end

  describe '#move'

  describe '#won?' do
    context 'when a new game is initialized' do
      it 'returns false'
    end

    context 'when a game is in progress' do
      it 'returns false'
    end

    context 'when a game is complete' do
      it 'returns false'
    end
  end
end
