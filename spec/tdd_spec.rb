require 'tdd'

describe '#Array' do
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

  describe '#two_sum' do
    let(:array_with_sums) { [-1, 0, 2, -2, 1] }
    let(:idxs_array_with_sums) { [[0, 4], [2, 3]] }
    subject { array_with_sums.two_sum }

    it 'returns an array' do
      expect(subject).to be_an(Array)
    end

    it 'returns an array of arrays' do
      expect(subject.first).to be_an(Array)
    end

    it 'finds the exact number of indexes that add to zero' do
      expect(subject.length).to eq(2)
    end

    it 'finds the exact idxs that add to zero' do
      expect(subject).to eq(idxs_array_with_sums)
    end
  end

  describe '#my_transpose' do
    let(:rows) do
      [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]
    end

    let(:cols) do
      [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]

    end

    it 'returns an array'

    it 'returns an array of arrays'

    it 'returns an array of the same length as the original'

    it 'returns a transposed array'
  end
end
