class CreateWorkMates < ActiveRecord::Migration[5.2]
  def change
    create_table :work_mates do |t|
      t.references :work, foreign_key: true
      t.references :producer, foreign_key: true
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
