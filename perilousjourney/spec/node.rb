require 'minitest/autorun'
require 'pry'
require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("Burke")
  end

  def test_node_exists

    assert_instance_of Node, @node
  end

  def test_surname

    assert_equal "Burke", @node.surname
  end

  def test_next_node

    assert_nil @node.next_node
  end
end
