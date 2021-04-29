class RocketSerializer < ActiveModel::Serializer
    attributes :id, :height, :diameter, :mass, :flickr_images, :name, :active, :cost_per_launch, :success_rate_pct, :first_flight, :wikipedia, :description, :unique_launchpads
    has_many :launches

    def unique_launchpads 
        object.launchpads.uniq
    end
end 