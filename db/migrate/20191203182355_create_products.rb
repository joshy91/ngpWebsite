class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :stock_number
      t.string :part_number
      t.integer :num
      t.integer :product_category
      t.string :stock_description1
      t.string :part_category
      t.string :stock_description2
      t.string :stock_description3
      t.string :unit
      t.string :pricing_method
      t.float :level1_price_mult
      t.float :level2_price_mult
      t.float :level3_price_mult
      t.float :level4_price_mult
      t.float :level5_price_mult
      t.float :special_mult
      t.float :last_cost
      t.float :quantity_on_hand

      t.timestamps
    end
  end
end
