class CreateFlashcards < ActiveRecord::Migration[5.0]
  def change
    create_table :flashcards do |t|
      t.string :word, null: false
      t.text :definition, null: false

      t.timestamps
    end
  end
end
