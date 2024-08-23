class HomeController < ApplicationController
  def index
    # @columns = Column.where(is_static: true)
     @static_columns = Column.where(is_static: true)
     @dynamic_columns = Column.where(is_static: false)
     @column_title_1 = @static_columns.find {|c| c.id ==1 }&.title
     @column_title_2 = @static_columns.find {|c| c.id ==2 }&.title
     @column_title_3 = @static_columns.find {|c| c.id ==3 }&.title

     @cards=Card.all
     @columns=Column.all
     @column=Column.new
     ############
     @card=Card.new
     @user=current_user
     #
     @column_card_counts = (@static_columns + @dynamic_columns).each_with_object({}) do |column, counts|
      counts[column.id] = @cards.where(column_id: column.id).count
    end

  end
end
