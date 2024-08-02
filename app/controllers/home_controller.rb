class HomeController < ApplicationController
  def index
    @columns = Column.where(is_static: true)
  end
end
