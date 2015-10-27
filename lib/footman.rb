# http://classic.battle.net/war3/human/units/footman.shtml

class Footman
attr_reader :health_points, :attack_power
  def initialize
  @health_points = 60
  @attack_power = 10
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

end
