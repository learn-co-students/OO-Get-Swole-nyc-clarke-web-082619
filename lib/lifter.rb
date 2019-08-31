class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def self.avg_lift_totals
    self.all.map{|lifter| lifter.lift_total}.reduce(&:+) / self.all.length.to_f
  end

  def memberships
    Membership.all.select{|member|member.lifter == self}
  end

  def gyms
    memberships.map{|member| member.gym}
  end

  def total_cost
    memberships.map{|member| member.cost}.reduce(&:+)
  end

  def join_gym(cost, gym)
    Membership.new(cost, self, gym)
  end
end
