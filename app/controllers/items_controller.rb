class ItemsController < ApplicationController
  def index
    @all_items = Item.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
