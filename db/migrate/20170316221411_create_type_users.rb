class CreateTypeUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :type_users do |t|
      t.string :name, :null=>false

      t.timestamps
    end
  end
end
