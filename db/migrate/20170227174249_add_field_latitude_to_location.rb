class AddFieldLatitudeToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :field_latitude, :float
  end
end
