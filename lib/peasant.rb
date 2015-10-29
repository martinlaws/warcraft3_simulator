require_relative('./unit.rb')

class Peasant < Unit

  def initialize
    @health_points = 35
    @attack_power = 0
  end
end