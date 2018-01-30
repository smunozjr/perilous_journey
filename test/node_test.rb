require "./lib/node"
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest <Minitest::Test

  def test_instance_of_node_exist
    node = Node.new("Burke")

    assert_instance_of Node, node
  end

  def test_node_has_a_name
    node = Node.new("Burke")

    assert_equal "Burke", node.surname
  end

  def test_next_node_is_nil
    node = Node.new("Burke")

    assert_nil nil, node.next_node
  end
end
