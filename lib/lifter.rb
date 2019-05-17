class Lifter
    attr_accessor :name, :lift_total
  
    @@all = []
  
    def initialize(name, lift_total)
      @name = name
      @lift_total = lift_total
      @@all << self
    end
  
    def self.all
      @@all
    end

    def memberships  
      Membership.all.select{|lifters| lifters.lifter == self}
    end

    def gym_memberships 
      memberships.map {|lifters| lifters.gym}
    end

    def self.lift
      self.all.map {|lifter|lifter.lift_total}
    end

    def self.total_lift 
      lift.inject {|sum, n| sum + n }/lift.length
    end

    def cost_list 
      memberships.map {|member| member.cost}
    end

    def total_cost 
      cost_list.inject{|sum, n| sum + n}
    end

    def new_gym(gym, cost) 
      new_membership = Membership.new(gym, self, cost)
    end

end