class Node
  attr_reader :surname

  attr_accessor :next_node

  def initialize(name)
    @surname = name
    @next_node = nil
  end


end
