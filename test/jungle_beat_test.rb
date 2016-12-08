require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'
require "pry"

class JungleBeatTest < Minitest::Test

  def test_can_create_jungle_beats
      jb = JungleBeat.new
      assert_instance_of JungleBeat, jb
    end

    def test_jungle_beats_can_create_list
      jb = JungleBeat.new
      assert jb.list
    end

    def test_jungle_beats_starts_with_empty_head
      jb = JungleBeat.new
      assert_equal nil, jb.list.head
    end

    def test_can_append_string_of_beats_to_list
      jb = JungleBeat.new
      assert_equal "deep doo ditt", jb.append("deep doo ditt")
    end

    def test_can_check_head_on_list_from_jungle_beats
      jb = JungleBeat.new
      assert_equal nil, jb.list.head
      jb.append("deep doo ditt")
      assert_equal "deep", jb.list.head.data
    end
  #
    def test_can_check_next_node_of_head_from_jungle_beats
      jb = JungleBeat.new
      assert_equal nil, jb.list.head
      jb.append("deep doo ditt")
      assert_equal "doo", jb.list.head.next_node.data
    end
  #
    def test_can_count_jungle_beat_list
      jb = JungleBeat.new
      assert_equal nil, jb.list.head
      jb.append("deep doo ditt")
      assert_equal 3, jb.count
    end

    def test_jb_plays
      jb = JungleBeat.new
      jb.append("ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom")
      jb.play
    end
  end
