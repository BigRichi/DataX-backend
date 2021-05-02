class RocketSerializer < ActiveModel::Serializer
    attributes :id, :height, :diameter, :mass, :flickr_images, :name, :active, :cost_per_launch, :success_rate_pct, :first_flight, :wikipedia, :description , :successful_launches, :successful_cost,:unsuccessful_launches, :unsuccessful_cost
    has_many :launches
end 