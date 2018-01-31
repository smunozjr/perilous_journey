require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(name)
    current_node = @head
    if @head.nil?
      @head = Node.new(name)
    else
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(name)
    end
  end

  def count
    number_of_nodes = 0
    current_node = @head
    return 0 if @head.nil?
    number_of_nodes += 1
    until current_node.next_node == nil
      number_of_nodes += 1
      current_node = current_node.next_node
    end
    number_of_nodes
  end

  def to_string
    current_node = @head
    if count == 1
      "The #{@head.surname} family"
    else
      string_var = "The #{@head.surname} family"
      until current_node.next_node == nil
       string_var += ", followed by the #{current_node.next_node.surname} family"
       current_node = current_node.next_node
      end
      string_var
    end

  end

  def prepend(name)
    duplicate_node = @head
    @head = Node.new(name)
    @head.next_node = duplicate_node
  end

  def insert(position, name)
    current_node = @head
    (position - 1).times do
    current_node = current_node.next_node
    end
    new_node = Node.new(name)
    new_next_node = current_node.next_node
    current_node.next_node = new_node
    new_node.next_node = new_next_node
  end

  def includes?(name)
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
  end







end
