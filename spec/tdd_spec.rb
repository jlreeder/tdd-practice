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

    subject { rows.my_transpose }

    it 'returns an array' do
      expect(subject).to be_an(Array)
    end

    it 'returns an array of arrays' do
      expect(subject.first).to be_an(Array)
    end

    it 'returns an array of the same length as the original' do
      expect(subject.length).to eq(rows.length)
    end

    it 'returns a transposed array' do
      expect(subject).to eq(cols)
    end
  end

  describe '#stock_picker' do
    let(:simple_prices) { [0, 1, 5] }
    let(:simple_prices_out) { [0, 2] }

    let(:falling_prices) { [5, 3, 1, 4] }
    let(:falling_prices_out) { [2, 3] }

    let(:late_rise_prices) { [3, 7, 0, 2, 5] }
    let(:late_rise_prices_out) { [2, 4] }

    it 'returns an array'

    it 'returns an array of length 2'

    context 'when the prices fall' do
      it 'picks the indexes with the greatest difference'
    end

    context 'when the prices rise more later' do
      it 'picks the indexes with the greatest difference'
    end
  end
end
