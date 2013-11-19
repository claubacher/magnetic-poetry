class CreateInclusions < ActiveRecord::Migration
  def change
    create_table :inclusions do |t|
      t.belongs_to :poem, index: true
      t.belongs_to :magnet, index: true

      t.timestamps
    end
  end
end
