class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.text :track_name, null: false
      t.references :producer, foreign_key: true

      t.timestamps
    end
  end
end
