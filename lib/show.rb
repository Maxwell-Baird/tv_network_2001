require './lib/character'

class Show

  attr_reader :name, :creator, :characters

  def initialize(show_name_parameter, creator_parameter, actors_parameter)
    @name = show_name_parameter
    @creator = creator_parameter
    @characters = actors_parameter
  end
end
