class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :update, :edit, :destroy]

  def index
    @items = Item.where(user: current_user)
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def destroy
    @item.destroy

    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :category_id)
  end

  def find_item
    @item = Item.find(params[:id])
  end
end