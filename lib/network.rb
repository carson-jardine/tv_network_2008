class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    #salary > 500,000 and name is upcase
    all_characters = @shows.map do |show|
      show.characters
    end.flatten
    all_characters.select do |character|
      character.salary > 500_000 && character.name == character.name.upcase
    end
  end

  def actors_by_show
    actors_by_show = Hash.new
    @shows.each do |show|
      actors_by_show[show] = show.actors
    end
    actors_by_show
  end

end
