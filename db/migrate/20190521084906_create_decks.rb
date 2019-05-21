class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :table, foreign_key: true

      t.timestamps
    end
  end
end
