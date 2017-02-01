class Array
  def my_uniq
    uniques = []
    each { |el| uniques << el unless uniques.include?(el) }
    uniques
  end

  # Q: Is there a simpler way to phrase this with 'inject' than below?
  #    Like in #my_transpose below
  def my_uniq
    inject([]) do |uniques, el|
      uniques << el unless uniques.include?(el)
      uniques
    end
  end

  def two_sum
    selected_idxs = []

    each_with_index do |el1, idx1|
      each_with_index do |el2, idx2|
        next if idx1 == idx2
        pair = [idx1, idx2]
        next if selected_idxs.include?(pair.reverse)

        selected_idxs << pair if (el1 + el2).zero?
      end
    end

    selected_idxs
  end

  def my_transpose
    (0...length).inject([]) do |transposed, i|
      transposed << map { |sub_a| sub_a[i] }
    end
  end

  def stock_picker
    day_ranges = []
    deltas = []

    each_index do |idx1|
      each_index do |idx2|
        next if idx1 == idx2
        next if idx1 > idx2
        next if self[idx1] > self[idx2]
        day_ranges << [idx1, idx2]
        deltas << (self[idx2] - self[idx1])
      end
    end

    max_delta_idx = deltas.each_with_index.max[1]
    day_ranges[max_delta_idx]
  end
end
