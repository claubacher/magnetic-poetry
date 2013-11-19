class CreateMagnets < ActiveRecord::Migration
  def change
    create_table :magnets do |t|
      t.string :content

      t.timestamps
    end
  end
end
