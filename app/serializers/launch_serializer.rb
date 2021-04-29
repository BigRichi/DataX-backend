class LaunchSerializer < ActiveModel::Serializer
    attributes :id, :flckr_original, :webcast, :wikipedia, :success, :details, :flight_number, :name, :launch_date_time, :upcoming
    has_many :launch_reviews
    belongs_to :rocket
    belongs_to :launchpad
end