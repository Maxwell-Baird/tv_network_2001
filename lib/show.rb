require './lib/character'

class Show

  attr_reader :name, :creator, :characters

  def initialize(show_name_parameter, creator_parameter, actors_parameter)
    @name = show_name_parameter
    @creator = creator_parameter
    @characters = actors_parameter
  end

  def total_salary
    total_salary = @characters.sum {|actor| actor.salary}
  end

  def highest_paid_actor
    highest_salary = @characters.max_by {|actor| actor.salary}
    highest_salary.actor
  end
end
