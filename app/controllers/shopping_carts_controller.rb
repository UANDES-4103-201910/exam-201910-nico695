class ShoppingCartsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
    # Get the tickets in the shopping cart
    	@products = Product.all
  	end

  

	def add_ticket

    # Set the shopping cart if unset
    session[:shopping_cart] ||= []

    begin
      product = Product.find(shopping_cart_params[:product_id])
    rescue
      redirect_back fallback_location: root_path, flash: { error: "Invalid product!" } and return
    end

    shopping_cart_params[:billing].to_i.times {
      session[:shopping_cart] << shopping_cart_params[:product_id]
    }

    redirect_back fallback_location: root_path, flash: { notice: "Product added to shopping cart!" } and return

    #render plain: "success! " + session[:shopping_cart].inspect
  end

  def shopping_cart_params
    params.permit(:utf8, :_method, :authenticity_token, :commit, :id, :product_id, :billing)
  end

end
