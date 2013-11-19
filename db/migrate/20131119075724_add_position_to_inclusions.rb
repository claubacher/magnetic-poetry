class AddPositionToInclusions < ActiveRecord::Migration
  def change
    add_column :inclusions, :fridge_top, :integer
    add_column :inclusions, :fridge_left, :integer
  end
end
