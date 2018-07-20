class ShoppingcartController < ApplicationController
  def index
    @shoppingcart = current_user.shoppingcarts
    @books = @shoppingcart.map { |x| x.book}
  end
  
  def Show
  end
  
  def create
    @shoppingcart = Shoppingcart.new({:book => Book.find(params[:item]), :user => current_user})
    if @shoppingcart.save
      redirect_to action: "index"
    else
      redirect_to root_path
    end
  end
end
