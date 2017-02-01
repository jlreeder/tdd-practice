class TowersOfHanoi

  attr_reader :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def move(source, dest)
    raise 'Invalid tower' unless [source, dest].all? { |el| el.between?(0, 2) }
    chosen = towers[source].pop
    towers[dest] << chosen
  end

  def won?
    towers == [[], [], [3, 2, 1]]
  end
end
