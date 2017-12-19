class ChangeAdminColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :admins, :password, :password_digest
  end
end
