class AddAreaOfInterestToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :area_interest, :string
  end
end
