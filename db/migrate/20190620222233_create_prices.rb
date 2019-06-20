class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :colors
      t.decimal :one
      t.decimal :two
      t.decimal :three
      t.decimal :four
      t.decimal :five

      t.timestamps
    end
  end
end
