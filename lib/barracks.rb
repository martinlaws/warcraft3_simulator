require_relative('./footman.rb')
require_relative('./unit.rb')
require_relative('./peasant.rb')
require_relative('./siege_engine.rb')

class Barracks
attr_accessor :gold, :food, :health_points, :lumber

  def initialize
    @gold             = 1000
    @food             = 80
    @lumber           = 500
    @health_points    = 500
  end

  def can_train_footman?
    if (@gold >= 135) && (@food >= 2)
      true
    else
      false
    end
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    end
  end

  def can_train_peasant?
    if (@gold >= 90) && (@food >= 5)
      true
    else
      false
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

  def can_train_siege_engine?
    if (@gold >= 200) && (@lumber >= 60) && (food >= 3)
      true
    else
      false
    end
  end

  def train_siege_engine
    if can_train_siege_engine?
      @gold -= 200
      @lumber -= 60
      @food -= 3
      SiegeEngine.new
    end
  end

  def damage(damage_points)
    @health_points -= damage_points
  end

end
