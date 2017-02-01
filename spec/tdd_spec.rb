require 'tdd'

describe '#array' do
  describe '#my_uniq' do
    let(:array_with_dups) { [1, 2, 1, 3, 3] }
    let(:array_without_dups) { [1, 2, 3] }
    subject { array_with_dups.my_uniq }

    it 'returns an array' do
      expect(subject).to be_an(Array)
    end

    it 'returns an array with no duplicates' do
      expect(subject).to eq(array_without_dups)
    end
  end
end
