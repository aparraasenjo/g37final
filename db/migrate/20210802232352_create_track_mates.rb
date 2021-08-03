class CreateTrackMates < ActiveRecord::Migration[5.2]
  def change
    create_table :track_mates do |t|
      t.references :track, foreign_key: true
      t.references :designer, foreign_key: true
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
