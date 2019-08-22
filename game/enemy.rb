class Enemy
  attr_accessor :name
  def initialize
    @health = 10
    @hit_power = [1,2,3,4,5].sample
  end
end
