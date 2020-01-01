class CreateBoardgames < ActiveRecord::Migration[6.0]
  def change
    create_table :boardgames do |t|
      t.string :name
      t.integer :year_published
      t.integer :min_players
      t.integer :max_players
      t.integer :min_playtime
      t.integer :max_playtime
      t.integer :min_age
      t.string :description
      t.string :image
      t.string :primary_publisher
      t.string :designers, array: true, default: []
      t.string :average_rating
      t.string :msrp

      t.timestamps
    end
  end
end
