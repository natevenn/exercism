class Robot 
  attr_reader :name

  def initialize
    @name = [*('A'..'Z')].sample(2).join + rand(100..999).to_s
    if @registry.include?(@name)
      reset
    else
      name_registry(@name)
    end
  end

  def reset
    @name = [*('A'..'Z')].sample(2).join + rand(100..999).to_s
  end
end

class RobotNameRegistry
  attr_reader :registry

  def name_registry(name)
    @registry = []
    @registry << name
  end
end
