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

  # def to_string
  #   if @names_list.length == 1
  #     string_var = "The #{@head.surname} family"
  #   else
  #     string_var = "The #{@head.surname} family, "
  #     @names_list[1..-1].each do |name|
  #       string_var = string_var + "followed by the #{name} family"
  #     end
  #   end
  #   string_var
  # end

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






end
