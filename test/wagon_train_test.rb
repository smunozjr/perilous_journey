require "./lib/wagon_train"
require "./lib/linked_list"
require 'minitest/autorun'
require 'minitest/pride'

class WagonTrainTest <Minitest::Test

  def test_if_instance_of_wagon_train_exist
    wt = WagonTrain.new

    assert_instance_of WagonTrain, wt
  end

  def test_wagon_list_exist
    wt = WagonTrain.new

    assert_instance_of LinkedList, wt.list
  end

  def test_wagon_head_is_nil
    wt = WagonTrain.new

    assert_nil nil, wt.list.head
  end

  def test_append_wagon_name
    wt = WagonTrain.new
    wt.append("Burke")

    assert_equal "Burke", wt.list.head.surname
  end

  def test_wagon_count
    wt = WagonTrain.new
    wt.append("Burke")
    wt.append("West")

    assert_equal 2, wt.count
  end



end
