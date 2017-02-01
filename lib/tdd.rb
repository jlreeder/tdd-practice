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
end
