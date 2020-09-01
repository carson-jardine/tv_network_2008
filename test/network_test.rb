require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test
  def setup
    @nbc = Network.new("NBC")
  end

  def test_it_exists
    assert_instance_of Network, @nbc
  end

  def test_it_has_a_name
    assert_equal "NBC", @nbc.name 
  end
end

# nbc.name
# => "NBC"

# nbc.shows
# => []

# michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
# => #<Character:0x00007fe5f88721f8...>

# kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
# => #<Character:0x00007fe5f8448f78...>

# knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
# => #<Show:0x00007fe5f8398970...>

# leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
# => #<Character:0x00007fe5f832bb18...>

# ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
# => #<Character:0x00007fe5f8172a60...>

# parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
# => #<Show:0x00007fe5f88b0a20...>

# nbc.add_show(knight_rider)

# nbc.add_show(parks_and_rec)

# nbc.shows
# => [#<Show:0x00007fe5f8398970...>, #<Show:0x00007fe5f88b0a20...>]

# nbc.main_characters
# => [#<Character:0x00007f98a4ba8dc8...>]

# nbc.actors_by_show
# => {
      #<Show:0x00007fe5f8398970...> => ["David Hasselhoff", "William Daniels"],
      #<Show:0x00007fe5f88b0a20...> => ["Amy Poehler", "Nick Offerman"]
#    }
