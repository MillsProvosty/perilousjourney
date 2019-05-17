require 'minitest/autorun'
require 'pry'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def setup
    @list = LinkedList.new
  end

  def test_list_exists
    assert_instance_of LinkedList, @list
  end

  def test_head_returns_nil
    assert_nil @list.head
  end

  def test_append_returns_west
    assert_equal "West", @list.append("West").surname
  end

  def test_it_returns_a_node
    expected = @list.append("Jeff")
    assert_instance_of Node, expected
    assert_equal "Jeff", @list.append("Jeff").surname
  end

  def test_next_node_is_nil
    @list.append("West")
    assert_nil @list.head.next_node
  end

  def test_count_of_list
    @list.append("Blueberry")
    assert_equal 1, @list.count
  end

  def test_to_string_returns_family
    @list.append("West")
    assert_equal "The West Family", @list.to_string
  end

  def test_count_of_list
    @list.append("Rhodes")
    assert_equal "Rhodes", @list.append("Rhodes").surname
  end

  def test_count_of_list
    @list.append("Rhodes")
    @list.append("Hardy")
    assert_equal "Hardy", @list.append("Hardy").surname
  end

  def test_count_of_list
    @list.append("Rhodes")
    @list.append("Hardy")
    assert_equal 2, @list.count
  end

  def test_to_string_returns_family
    @list.append("Rhodes")
    @list.append("Hardy")
    assert_equal "The Rhodes family, followed by the Hardy family", @list.to_string
  end










end
