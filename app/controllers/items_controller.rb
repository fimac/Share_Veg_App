class ItemsController < ApplicationController
  def index
    @all_items = Item.all
  end

  def show
    @item = Item.find_by(id: params['id'])
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create ( item_params )
    item.user = @current_user
    item.save
    redirect_to "items/#{item.id}"
  end

  def edit
    @item = Item.find_by( id: params['id'] )
  end

  def update
    item = Item.find_by( id: params['id'] )
    item.update( item_params )
    redirect_to "/items/#{item.id}"
  end

  def destroy
    item = Item.find_by( id: params['id'] )
    item.destroy
    redirect_to "/items"
  end

  private
  def item_params
    params.require(:item).permit(:user_id, :name, :description, :image)
  end
end

# Search code

# def index
#   # if params["occassion"] is defined
#   if params[:occasion].present?
#   # @products should be all products where the name field matches params["name"]
#     @products = Product.where(:occasion => params[:occasion])
#     # Product.where(occasion_field, "<%#{params[:occasion]}%>")
#   else
#     @products = Product.search(params[:search])
#   end
