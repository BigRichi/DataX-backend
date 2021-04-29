class CreateLaunches < ActiveRecord::Migration[6.1]
  def change
    create_table :launches, id: :string do |t|
      # t.string :space_x_launch_id, null: false
      t.string :rocket_id
      t.string :launchpad_id
      t.text :flckr_original, array: true, default: []
      t.string :webcast
      t.string :wikipedia
      t.boolean :success
      t.text :details
      t.integer :flight_number
      t.string :name
      t.datetime :launch_date_time
      t.boolean :upcoming

      t.timestamps
    end
  end
end
