class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, limit: 40

      t.timestamps null: false
    end
  end
end
