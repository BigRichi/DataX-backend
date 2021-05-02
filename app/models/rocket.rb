class Rocket < ApplicationRecord
    has_many :launches
    has_many :launchpads, through: :launches

    def total_launches 
        launches.size
    end
    
    def successful_launches    
        launches.where(success: true).size
    end
    
    def unsuccessful_launches    
        launches.where(success: false).size
    end

    def successful_cost
        self.cost_per_launch * self.successful_launches
    end

    def unsuccessful_cost
        self.cost_per_launch * self.unsuccessful_launches
    end

end
