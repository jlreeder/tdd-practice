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

    low = nil
    high = nil

    each_index do |idx|
      # Add curs to days if there's a low and a high, reset curs
      if low && high
        day_ranges << [low, high]
        low, high = nil, nil
      # Check low
      elsif low.nil? || self[idx] < low
        low = idx
      # Check high
      elsif high.nil? || self[idx] > high
        high = idx
      end
    end

    day_ranges.first
  end
end
