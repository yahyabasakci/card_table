class HomeController < ApplicationController
  def index
    # @columns = Column.where(is_static: true)
     @static_columns = Column.where(is_static: true)
     @dynamic_columns = Column.where(is_static: false)
     @cards=Card.all
     ############
     @card=Card.new
     @user=current_user
     #
     @column_card_counts = (@static_columns + @dynamic_columns).each_with_object({}) do |column, counts|
      counts[column.id] = @cards.where(column_id: column.id).count
    end
  end
end
