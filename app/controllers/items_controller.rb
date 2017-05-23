class ItemsController < ApplicationController

  def map

  end

  def index
    @all_items = Item.all

    if params[:search]
      @all_items = Item.search(params[:search]).order("created_at DESC")
    else
      @all_items = Item.all.order("created_at DESC")
    end
  end

  def show
    @item = Item.find_by(id: params['id'])
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create( item_params )
    cloudinary = Cloudinary::Uploader.upload( params[ "item" ][ "link" ] )
    item.image = cloudinary["url"]
    item.user = @current_user
    item.save

    redirect_to "/items/#{item.id}"


  end

  def edit
    @item = Item.find_by( id: params['id'] )
  end

  def update
    item = Item.find_by( id: params['id'] )
    item.update( item_params )

    if params[:item][:link]
      cloudinary = Cloudinary::Uploader.upload( params[ "item" ][ "link" ] )
      item.image = cloudinary["url"]
    end
    item.save

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
