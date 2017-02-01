class TowersOfHanoi

  attr_reader :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def move(source, dest)
    raise 'Invalid tower' unless [source, dest].all? { |el| el.between?(0, 2) }
    raise 'Empty tower' if towers[source].empty?
    chosen = towers[source].pop
    towers[dest] << chosen
  end

  def won?
    towers == [[], [], [3, 2, 1]]
  end


  private

  def source_smaller?(source, dest)
    return true if towers[dest].empty?
    towers[source].last < towers[dest].last
  end
end
