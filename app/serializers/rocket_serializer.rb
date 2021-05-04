class RocketSerializer < ActiveModel::Serializer
    attributes :id, :height, :diameter, :mass, :flickr_images, :name, :active, :cost_per_launch, :success_rate_pct, :first_flight, :wikipedia, :description , :successful_launches,:unsuccessful_launches, :successful_launches_rate, :unsuccessful_launches_rate, :last_launch
    has_many :launches
end 