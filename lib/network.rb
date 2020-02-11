require './lib/show'
require './lib/character'

class Network

  attr_reader :name, :shows

  def initialize(name_parameter)
    @name = name_parameter
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main = []
    greater_than_500 = []
    @shows.each do |show|
      greater_than_500 += show.characters.find_all{|character| character.salary > 500000}
    end
    main = greater_than_500.find_all{|character| character.name.upcase == character.name}
    main
  end

  def actors_by_show
    by_show = Hash.new
    @shows.each do |show|
      by_show[show] = show.actors
    end
    by_show
  end

  def shows_by_actor
    by_actor = Hash.new
    @shows.each do |show|
      show.characters.each do |character|
        if by_actor[character.actor] == nil
          by_actor[character.actor] = [show]
        else
          by_actor[character.actor] << show
        end
      end
    end
    by_actor
  end

end
