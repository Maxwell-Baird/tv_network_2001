
class Character

  def initialize(hash_parameter)
    @attributes = hash_parameter
  end

  def name
    @attributes[:name]
  end

  def actor
    @attributes[:actor]
  end

  def salary
    @attributes[:salary]
  end
end
