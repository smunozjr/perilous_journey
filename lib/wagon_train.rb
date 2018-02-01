require './lib/linked_list'

class WagonTrain
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(name)
    list.append(name)
  end

  def count
    list.count
  end
end
