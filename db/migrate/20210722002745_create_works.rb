class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.text :work_name, null: false
      t.references :designer, foreign_key: true

      t.timestamps
    end
  end
end
