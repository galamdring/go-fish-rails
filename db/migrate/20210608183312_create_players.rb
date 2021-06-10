class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.references :game_id, game: true, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
