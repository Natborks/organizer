class ChanColumnNames < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :first_name, :string
  	change_column :users, :last_name, :string
  	change_column :users, :gender , :string
  	change_column :users, :student_id_number , :string
  	change_column :users, :email, :string
  	change_column :users, :about_you, :string
  end
end
