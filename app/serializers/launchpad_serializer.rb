class LaunchpadSerializer < ActiveModel::Serializer
    attributes :name, :full_name, :locality, :region, :timezone, :latitude, :longitude, :launch_attempts, :launch_successes, :details, :status
    has_many :launches
end