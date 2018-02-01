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

  def test_append_supplies
    wt = WagonTrain.new
    result = wt.append("Burke", {"pounds of food" => 200})

    assert_instance_of Node, result
  end

  def test_prepend_supplies
    wt = WagonTrain.new
    result = wt.list.prepend("Hardy", {"spare wagon tongues" => 3})

    assert_instance_of Node, result
  end

  def test_insert_pounds_of_food
    skip
    wt = WagonTrain.new
    wt.append("Burke")
    result = wt.list.insert(1, "West", {"pounds of food" => 300})

    assert_instance_of Node, result
  end

  def test_wagon_count
    skip
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.list.append("Hardy", {"spare wagon tongues" => 3})
    wt.list.append(1, "West", {"pounds of food" => 300})

    assert_equal 3, wt.count
  end

  def test_wagon_supplies
    skip
    wt = WagonTrain.new
    assert_equal ({"spare wagon tongues" => 3, "pounds of food" => 500}), wt.supplies
  end

end
