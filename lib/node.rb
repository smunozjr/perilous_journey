class Node
  attr_accessor :next_node

  attr_reader :surname

  def initialize(name)
    @surname = name
    @next_node = nil
  end

end
