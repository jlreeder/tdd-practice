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

  describe '#move' do
    context 'when a valid move is requested' do
      before(:each) { game.move(0, 1) }

      it 'removes a disc from the requested tower' do
        expect(game.towers[0]).to_not include(1)
      end

      it 'adds the disc to the requested tower' do
        expect(game.towers[1]).to include(1)
      end
    end

    context 'a non-existent tower is requested' do
      it 'raises an error'
    end

    context 'when an empty tower is requested as source' do
      it 'raises an error'
    end

    context 'when an move would put a large disc on a small disc' do
      it 'raises an error'
    end
  end

  describe '#won?' do
    context 'when a new game is initialized' do
      it 'returns false' do
        expect(game.won?).to be(false)
      end
    end

    context 'when a game is in progress' do
      it 'returns false'
    end

    context 'when a game is complete' do
      it 'returns false'
    end
  end
end
