class CreateShirts < ActiveRecord::Migration[5.2]
  def change
    create_table :shirts do |t|
      t.string :name
      t.string :project
      t.string :email
      t.string :email2
      t.string :email3
      t.string :email4
      t.string :email5
      t.string :blob

      t.timestamps
    end
  end
end
