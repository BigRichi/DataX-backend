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
        f = launches.where(success: false).size
        n = launches.where(success: nil).size
        return f + n 
    end

    def successful_launches_rate 
        if self.total_launches > 0 
            return ((self.successful_launches.to_f/self.total_launches)*100).round(2)
        else
            return 0
        end
    end
    
    def unsuccessful_launches_rate   
        if self.total_launches > 0 
            return ((self.unsuccessful_launches.to_f/self.total_launches)*100).round(2)
        else 
            return 0
        end
    end

    def successful_cost
        self.cost_per_launch * self.successful_launches
    end

    def unsuccessful_cost
        self.cost_per_launch * self.unsuccessful_launches
    end

    def last_launch
        sl = launches.where(success: true)
        return sl.last 
    end


end
