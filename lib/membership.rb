class Membership
  attr_reader :cost, :lifter, :gym

  def initialize(lifter, gym, cost)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end
end
