class RemoveSecretCodeColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :secret_code
  end
end
