class AddFieldLongitudeToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :field_longitude, :float
  end
end
