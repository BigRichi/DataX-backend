class LaunchReviewSerializer < ActiveModel::Serializer
    attributes  :comment, :reviewer, :present_at_launch
    belongs_to :launch
end