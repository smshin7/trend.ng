class RemoveColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :provider
  end
end
