class RocketSerializer < ActiveModel::Serializer
    attributes :height, :diameter, :mass, :flickr_images, :name, :active, :cost_per_launch, :success_rate_pct, :first_flight, :wikipedia, :description
    has_many :launches
end 