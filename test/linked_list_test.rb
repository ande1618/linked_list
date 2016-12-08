require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require "pry"


class LinkedListTest < Minitest::Test

  def test_jungle_beats_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_list_has_head
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_how_many_node
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
    assert_equal nil, list.head.next_node
  end
#
  def test_node_can_add_several_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
  end
#
  def test_to_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_to_string_multiple_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("dop")
    assert_equal "doop deep dop", list.to_string
  end

  def test_list_can_prepend_node
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.prepend("flop")
    list.prepend("boop")
    assert_equal 5, list.count
    assert_equal "boop", list.head.data
    assert_equal "boop flop dop plop suu", list.to_string
  end

  def test_list_can_insert_node
    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.append("suu")
    assert_equal 3, list.count
    list.insert(2, "woo")
    assert_equal "dop plop woo suu", list.to_string
  end

  def test_list_can_find_correct_node
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "deep woo shi shu blop", list.to_string
    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_list_includes
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal true, list.includes?("deep")
    assert_equal false, list.includes?("dep")
  end

  def test_node_can_be_removed
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "blop", list.pop
    # assert_equal "shu", list.pop
  end


end
