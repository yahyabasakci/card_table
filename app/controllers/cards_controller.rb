class CardsController < ApplicationController
  before_action :set_user

  def index
    @cards = Card.all   
  end

  def show
    @card = Card.find(params[:id])
  end
  def new 
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.user = current_user
    @card.column_id = 1  
    if @card.save
      redirect_to new_user_card_path, notice: 'Card was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @card = Card.find(params[:id])
  end

  def updated
    @card = Card.find(params[:id])
    if @card.update(card_params)
      redirect_to @card
    else
      render :edit, :unprocessable_entity
    end
  end
  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def card_params
    params.require(:card).permit(:title, :description)
  end

  def set_user
    @user = current_user
  end


end
