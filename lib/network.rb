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

end
