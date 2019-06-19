class AddForeignKeyToLogos < ActiveRecord::Migration[5.2]
  def change
    add_column :logos, :user_id, :integer
  end
end
