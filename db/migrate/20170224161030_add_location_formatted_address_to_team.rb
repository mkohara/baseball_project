class AddLocationFormattedAddressToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :location_formatted_address, :string
  end
end
