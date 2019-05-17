class Gym
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end

    def all_memberships
      Membership.all.select {|member| member.gym == self}
    end

    def get_lifter
      all_memberships.map {|lif| lif.lifter}
    end

    def lifters 
      get_lifter.map {|lif| lif.name}
    end

    def totals 
      get_lifter.map {|lif| lif.lift_total}
    end 

    def combined_totals 
      totals.inject {|sum, n| sum + n}
    end

end

  