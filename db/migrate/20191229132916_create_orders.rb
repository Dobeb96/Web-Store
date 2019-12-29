class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :address
      t.text :additional_user_message
      t.decimal :value
      t.boolean :paid, default: :false

      t.timestamps
    end
  end
end
