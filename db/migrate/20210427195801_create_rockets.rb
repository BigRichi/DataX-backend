class CreateRockets < ActiveRecord::Migration[6.1]
  def change
    create_table :rockets, id: :string do |t|
      # t.string :space_x_rocket_id, null: false, unique: true
      t.float :height
      t.float :diameter
      t.float :mass
      t.float :isp_sea_level
      t.float :isp_vacuum
      t.integer :landing_legs
      t.string :landing_legs_material
      t.text :flickr_images, array: true, default: []
      t.string :name
      t.boolean :active
      t.integer :cost_per_launch
      t.float :success_rate_pct
      t.datetime :first_flight
      t.string :wikipedia
      t.string :description

      t.timestamps
    end
  end
end
