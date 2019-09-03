class Gym
  attr_reader :name

  def initialize(name)
    @name = name
  end

  @@all = []

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|m|m.gym == self}
  end

  def lifters
    memberships.map {|m| m.lifter}
  end

  def lifters_names
    lifters.map {|l| l.name}
  end

  def lifters_lift_total
    lifters.reduce(0) {|start, l| start + l.lift_total}
  end
end
