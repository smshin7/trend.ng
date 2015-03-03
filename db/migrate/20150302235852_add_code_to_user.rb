class AddCodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :secret_code, :string
  end
end
