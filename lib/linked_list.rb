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
    @head = Node.new(name)
    @head = @node if head.nil?
    @count += 1
    @names_list << name
    @node
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
    current_node = @head
    until current_node.next_node == nil
     current_node = current_node.next_node
     current_node.next_node = node
     current_node.next_node.next_node = nil
    end
  end






end
