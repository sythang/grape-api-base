class AddBranchIdToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :branch_id, :integer, index: true
  end
end
