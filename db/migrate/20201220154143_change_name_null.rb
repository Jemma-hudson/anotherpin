class ChangeNameNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :order_items, :order_id, true
    change_column_null :order_items, :product_id, true
  end
end
