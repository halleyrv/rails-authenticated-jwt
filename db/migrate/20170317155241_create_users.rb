class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name,:null=>false
      t.string :email, :null=>false
      t.string :password_digest, :null=>false
      t.references :type_user, foreign_key: true

      t.timestamps
    end
  end
end
