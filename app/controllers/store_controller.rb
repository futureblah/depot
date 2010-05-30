class StoreController < ApplicationController
  def index
    @datetime = Time.now.strftime("%B %d %Y")
    @products = Product.all
    @cart = find_or_create_cart
  end

end
