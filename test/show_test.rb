require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'


class ShowTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_it_exists
    assert_instance_of Show, @knight_rider

  end

end



# knight_rider.name
# => "Knight Rider"

# knight_rider.creator
# => "Glen Larson"

# knight_rider.characters
# => [#<Character:0x00007f8327213de0...>, #<Character:0x00007f8326ab57d8...>]

# knight_rider.total_salary
# => 2600000

# knight_rider.highest_paid_actor
# => "David Hasselhoff"

# knight_rider.actors
# => ["David Hasselhoff", "William Daniels"]
