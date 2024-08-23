class ColumnsController < ApplicationController
  def index
    @columns = Column.all 
  end

  def show
    @column = Column.find(params[:id])
    @card = Card.new
    @cards = Card.where(column_id: @column.id)
  end


  

  def new
    @column = Column.new
  end

  # def create
  #   @user = User.find(params[:user_id])
  #   @column = @user.columns.build(column_params)
  #   if @column.save
  #     redirect_to user_path(@user), notice: 'Kolon başarıyla eklendi.'
  #   else
  #     redirect_to user_path(@user), alert: 'Kolon eklenirken bir hata oluştu.'
  #   end
  # end
  def create
    @column = Column.new(column_params)
    @column.is_static=false
    if @column.save
      redirect_to home_path, notice: 'Column was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @column = Column.find(params[:id])
    @column.destroy
    respond_to do |format|
      format.html { redirect_to home_path, notice: 'Column was successfully destroyed.' }
    end
  end

  private

  # def column_params
  #   params.require(:column).permit(:name)
  # end
  def column_params
    params.require(:column).permit(:title, :description, :color_code)
  end

  # def set_column
  #   @column = column.find(params[:id])
  # end
  
end
