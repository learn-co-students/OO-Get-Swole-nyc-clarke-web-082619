class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end


  def all_memberships
    Memberships.all.select{|x| x.lifter == self}
  end

  def all_gyms
    all_memberships.map{|x| x.gym}
  end

  def total_cost
    all_memberships.map{|x| x.cost}.sum
  end

  def sign_up(gym,cost)
    Membership.new(cost,self,gym)
  end

  def self.all
    @@all
  end

  def self.average_lift_total
    @@all.each{|x| x.lift_total}.sum/(@@all.length)
  end

end
