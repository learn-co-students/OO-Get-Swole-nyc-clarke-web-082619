class Lifter
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  @@all = []

  def memberships
    Membership.all.select {|m|m.lifter == self}
  end

  def cost_of_memberships
    memberships.reduce(0) do |start, m|
      start + m.cost 
    end
  end

  def gyms
    memberships.map {|m| m.gym}
  end

    def self.lift_average
      sum = @@all.reduce(0) do |start, lifter|
        start + lifter.lift_total
      end
      sum.to_f/@@all.length
    end

    def sign_up(gym, cost)
      if !gyms.include?(gym)
      Membership.new(self, gym, cost)
      else
        "#{name} already joined #{gym.name}!"
      end
    end
end
