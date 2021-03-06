require_relative('./unit.rb')

class SiegeEngine < Unit

  def initialize
    @health_points = 400
    @attack_power  = 50
  end

  def attack!(enemy)
    false
  end

  def attack_building!(building)
    building.damage(@attack_power * 2)
  end
end