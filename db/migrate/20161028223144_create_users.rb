class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 40
      t.string :email, limit: 40

      t.timestamps null: false
    end
  end
end
