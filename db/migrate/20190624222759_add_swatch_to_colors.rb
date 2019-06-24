class AddSwatchToColors < ActiveRecord::Migration[5.2]
  def change
    add_column :colors, :swatch, :string
  end
end
