class CreateLaunchpads < ActiveRecord::Migration[6.1]
  def change
    create_table :launchpads, id: :string do |t|
      # t.string :space_x_launchpad_id, null: false, unique: true
      t.string :name
      t.string :full_name
      t.string :locality
      t.string :region
      t.string :timezone
      t.float :latitude
      t.float :longitude
      t.integer :launch_attempts
      t.integer :launch_successes
      t.string :details
      t.string :status

      t.timestamps
    end
  end
end
