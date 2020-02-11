
class Character

  def initialize(hash_parameter)
    @attributes = hash_parameter
  end

  def name
    @attributes[:name]
  end
end
