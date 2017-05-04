class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :word, null: false
      t.string :definition, null: false

      t.timestamps
    end
  end
end
