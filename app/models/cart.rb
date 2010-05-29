class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  
  def add_product(product_id)
    # load the item based on the product id
    current_item = line_items.where(:product_id => product_id).first
    
    # if it was found update qty
    if current_item
      current_item.quantity += 1
    else
      # if not found create a new line item and add
      # to line items array
      current_item = LineItem.new(:product_id=>product_id)
      line_items << current_item
    end
    current_item
  end
  
  
end
