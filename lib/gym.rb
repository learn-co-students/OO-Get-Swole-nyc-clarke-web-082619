class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end

  def self.find_by_name(gym_name)
    self.all.select{|gym| gym.name == gym_name}
  end

  def memberships
    Membership.all.select{|member| member.gym == self}
  end

  def lifter_names
    memberships.map{|member| member.lifter}
  end

  def combined_lift_total
    lifter_names.map{|member| member.lift_total}.reduce(&:+)
  end

end
