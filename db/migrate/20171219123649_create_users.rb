class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name 
    	t.string :gender  	
    	t.string :student_id_number
    	t.string :email
    	t.integer :phone
    	t.integer :level
    	t.string :about_you
    	t.integer :terms

      t.timestamps
    end
  end
end
