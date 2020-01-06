class ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page])
    total_count = @items.total_count
    first_item = @items.limit_value * (@items.current_page - 1) + 1
    last_item = [first_item + @items.limit_value - 1, total_count].min
    @items_display_range = "Displaying #{first_item}-#{last_item}/#{total_count} items"
  end
end
