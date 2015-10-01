class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render 'new'
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item
      @item.update(:completed => true)
      redirect_to items_path
    end
  end

  def active
    @active_items = Item.active
  end


  def complete
    @complete_items = Item.completed
  end

  def show
  end



  private
    def item_params
      params.require(:item).permit(:title, :completed)
    end
end
