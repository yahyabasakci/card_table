class ColumnsController < ApplicationController
  def index
    @columns = Column.all 
  end

  def show
    @user = User.find(params[:id])
    @columns = Column.find(params[:id])
    @new_column = Column.new
  end

  private

  def set_column
    @column = column.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @column = @user.columns.build(column_params)
    if @column.save
      redirect_to user_path(@user), notice: 'Kolon başarıyla eklendi.'
    else
      redirect_to user_path(@user), alert: 'Kolon eklenirken bir hata oluştu.'
    end
  end

  private

  def column_params
    params.require(:column).permit(:name)
  end
  
end
