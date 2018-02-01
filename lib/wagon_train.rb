require './lib/linked_list'

class WagonTrain
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(name, supplies = {})
    new_family = list.append(name)
    new_family.supplies = supplies
    new_family
  end

  def count
    list.count
  end

end
