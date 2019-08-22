class Weapon
  attr_accessor :name, :damage, :speed, :uses
  def initialize(options)
    @name = options[:name]
    @damage = options[:damage].to_i
    @speed = options[:speed].to_i
    @uses = 10
  end
end
