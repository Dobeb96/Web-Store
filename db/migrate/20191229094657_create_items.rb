class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.numeric :availability
      t.boolean :visible

      t.timestamps
    end
  end
end
