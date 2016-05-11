class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :product, index: true
      t.decimal :amount, :precision => 8, :scale => 2
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
