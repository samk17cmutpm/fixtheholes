class RemoveLocationInOwners < ActiveRecord::Migration[5.0]
  def change
    remove_column :owners, :area_id
  end
end
