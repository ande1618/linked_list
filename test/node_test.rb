require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_node_exists
    node = Node.new("plop")
    assert_equal Node, node.class
  end

  def test_node_can_access_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_is_nil_by_default
    node = Node.new("groovy")
    assert_equal nil, node.next_node
  end
end
