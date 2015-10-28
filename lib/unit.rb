class Unit
  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(damage_points)
    @health_points -= damage_points
  end

  def attack!(enemy)
    if !dead?
      enemy.damage(attack_power)
    else
      false
    end
  end

  def attack_building!(building)
    building.damage(attack_power / 2)
  end

  def dead?
    if @health_points >= 0
      true
    end
  end
end