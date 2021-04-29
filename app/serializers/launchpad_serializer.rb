class LaunchpadSerializer < ActiveModel::Serializer
    attributes :id, :name, :full_name, :locality, :region, :timezone, :latitude, :longitude, :launch_attempts, :launch_successes, :details, :status, :unique_rockets
    has_many :launches


    def unique_rockets
        object.rockets.uniq
    end
end