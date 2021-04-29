class LaunchReviewSerializer < ActiveModel::Serializer
    attributes :id, :comment, :reviewer, :present_at_launch
    belongs_to :launch
end