class CreateLaunchReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :launch_reviews do |t|
      t.string :launch_id
      t.string :reviewer
      t.boolean :present_at_launch
      t.text :comment

      t.timestamps
    end
  end
end
