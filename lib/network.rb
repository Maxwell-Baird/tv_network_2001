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
end
