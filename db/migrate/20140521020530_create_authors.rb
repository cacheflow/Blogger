class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :email
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
  end
end
