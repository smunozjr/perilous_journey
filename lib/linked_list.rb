require './lib/node'

class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(name)
    @node = Node.new(name)
    @head = @node if head.nil?
    @count += 1
    @node
  end

  def to_string
    # require "pry"; binding.pry
    "The #{@node.surname} family"
  end


end
