class AddFieldFormattedAddressToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :field_formatted_address, :string
  end
end
