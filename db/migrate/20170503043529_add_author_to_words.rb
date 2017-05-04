class AddAuthorToWords < ActiveRecord::Migration[5.0]
  def change
    add_reference :words, :author, foreign_key: true
  end
end
