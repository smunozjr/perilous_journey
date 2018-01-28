require './lib/linked_list'
require 'minitest/autorun'
require 'minitest/pride'

class LinkedListTest <Minitest::Test

  def test_if_instance_of_linked_list_exist
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_list_head_is_nil
    list = LinkedList.new

    assert_equal nil, list.head
  end

  def test_append_new_name
    list = LinkedList.new

    assert_equal "West", list.append("West")
  end



end
