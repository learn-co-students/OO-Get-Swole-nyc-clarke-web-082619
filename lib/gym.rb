class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def all_memberships
    Memberships.all.select{|x| x.gym == self}
  end 

  def all_lifters
    all_memberships.map{|x| x.lifter}
  end

  def lifter_names
    all_lifters.map{|x| x.name}
  end

  def self.all
    @@all
  end

  def lift_total_sum
    all_lifters.map{|x| x.lift_total}.sum
  end
end
