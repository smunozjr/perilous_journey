class Node
  attr_reader :surname

  attr_accessor :next_node,
                :supplies

  def initialize(name)
    @surname = name
    @next_node = nil
    @supplies = {}
  end


end
