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

  def test_list_to_string_one_family
    list = LinkedList.new
    list.append("West")

    assert_equal "West", list.head.surname
  end

  def test_empty_list_has_count_zero
    list = LinkedList.new

    assert_equal 0, list.count
  end

  def test_count_returns_one
    list = LinkedList.new
    list.append("West")

    assert_equal 1, list.count
  end

  def test_it_has_two_nodes
    list = LinkedList.new
    list.append("West")
    list.append("Jane")

    assert_equal 2, list.count
  end

  def test_it_has_three_nodes
    list = LinkedList.new
    list.append("West")
    list.append("Jane")
    list.append("Luke")

    assert_equal 3, list.count
  end

  def test_append_increase_count
    list = LinkedList.new
    list.append("Hardy")
    list.append("Rhodes")

    assert_equal 2, list.count
    assert_equal "Hardy", list.head.surname
    assert_equal "Rhodes", list.head.next_node.surname
  end

  def test_list_to_string_multiple_families
    skip
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")

    assert_equal "The Rhodes family, followed by the Hardy family", list.to_string
  end

  def test_another_name
    skip
    list = LinkedList.new
    list.append("Brooks")

    assert_equal "The Brooks family", list.to_string
  end

  def test_prepend_name
    list = LinkedList.new
    list.append("Janice")
    list.append("Foggy")
    list.prepend("Mckinney")

    assert_instance_of Node, list.prepend("McKinney")
  end

  def test_multiple_families
    skip
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("Mckinney")

    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", list.to_string
  end

  def test_can_insert_name
    list = LinkedList.new
    list.append("Henderson")
    list.append("Brooks")
    list.insert(1, "Lawson")

    assert_instance_of Node,
    list.insert(1, "Lawson")
  end

  def test_it_find_one_name
    list = LinkedList.new
    list.append("Henderson")
    list.append("Brooks")

    assert_equal "The Brooks family", list.find(2, 1)
  end

  def test_it_find_three_names
    list = LinkedList.new
    list.append("Lawson")
    list.append("Brooks")
    list.append("Henderson")

    assert_equal "The Lawson family, followed by the Brooks family, followed by the Henderson family", list.find(1, 3)
  end








end
