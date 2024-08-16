class ColumnsController < ApplicationController
  def index
    @columns = Column.all 
  end

  def show
    @user = User.find(params[:id])
    @columns = Column.find(params[:id])
    @new_column = Column.new
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

  private

  # def column_params
  #   params.require(:column).permit(:name)
  # end
  def column_params
    params.require(:column).permit(:title, :description, :color_code)
  end

  def set_column
    @column = column.find(params[:id])
  end
  
end
