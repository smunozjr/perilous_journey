require './lib/linked_list'
require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'

class LinkedListTest <Minitest::Test

  def test_if_instance_of_linked_list_exist
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_list_head_is_nil
    list = LinkedList.new

    assert_nil nil, list.head
  end

  def test_append_new_name
    list = LinkedList.new

    assert_instance_of Node, list.append("West")
    assert_nil nil, list.head.next_node
    assert_equal 1, list.count
  end

  def test_list_to_string
    list = LinkedList.new
    list.append("West")

    assert_equal "The West family", list.to_string
  end






end
