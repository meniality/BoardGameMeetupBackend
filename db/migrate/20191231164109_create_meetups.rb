class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.references :boardgame, null: false, foreign_key: true
      t.string :date
      t.string :time
      t.string :location

      t.timestamps
    end
  end
end
