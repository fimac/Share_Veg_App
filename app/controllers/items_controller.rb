class ItemsController < ApplicationController

  def map

  end

  def index
    @all_items = Item.all

    if params[:search]

      if params[:distance]
        unfiltered_items = Item.where( name: params[:search] )
        @all_items = check_distance( unfiltered_items )
      else
      @all_items =  Item.where( name: params[:search] )
      end

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

  def check_distance(items)
    output = []
    user_distance = 4

    items.each do |item|
    item_distance = Geocoder::Calculations.distance_between( "#{ @current_user.latitude }, #{ @current_user.longitude }", "#{ item.user.latitude }, #{ item.user.longitude }" )
      if item_distance <= user_distance
        output << item
      end
    end
    return output
  end
end

# extend form to inlc for distance.
# add an if for params of distance like the search.
