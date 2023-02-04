class AddOrderToLineItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :line_items, :order, null: true, foreign_key: true
    change_column :line_items, :cart_id, :integer, null: true 
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
