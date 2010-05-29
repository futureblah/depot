class StoreController < ApplicationController
  def index
    @datetime = Time.now.strftime("%B %d %Y")
    @products = Product.all
  end

end
