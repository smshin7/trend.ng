class AddWoeidToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :woeid, :string
  end
end
