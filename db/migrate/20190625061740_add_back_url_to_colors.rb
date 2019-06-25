class AddBackUrlToColors < ActiveRecord::Migration[5.2]
  def change
    add_column :colors, :backURL, :string
  end
end
