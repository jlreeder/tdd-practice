class Array
  def my_uniq
    uniques = []
    each { |el| uniques << el unless uniques.include?(el) }
    uniques
  end

  # Q: Is there a simpler way to phrase this with 'inject' than below?
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
    transposed = []

    length.times do |i|
      trans_sub_a = []

      each do |sub_a|
        trans_sub_a << sub_a[i]
      end

      transposed << trans_sub_a
    end

    transposed
  end
end
