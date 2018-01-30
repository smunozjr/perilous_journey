require './lib/node'

class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
    @names_list = []
  end

  def append(name)
    if @head.nil?
      @head = Node.new(name)
    else
      new_node_position = traverse_list
      new_node_position = Node.new(name)
    end
    @count += 1
  end

  def traverse_list(current_node = @head)
    if current_node.next_node = nil
       return current_node.next_node
    else
      current_node = current_node.next_node
       traverse_list(current_node)
     end
  end

  def to_string
    if @names_list.length == 1
      string_var = "The #{@head.surname} family"
    else
      string_var = "The #{@head.surname} family, "
      @names_list[1..-1].each do |name|
        string_var = string_var + "followed by the #{name} family"
      end
    end
    string_var
  end

  def prepend(name)
    duplicate_node = @head
    @head = Node.new(name)
    @head.next_node = duplicate_node
    # until current_node.next_node == nil
    #  current_node = current_node.next_node
    #  current_node.next_node = node
    #  current_node.next_node.next_node = nil
    # end
  end






end
