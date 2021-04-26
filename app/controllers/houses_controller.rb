class HousesController < ApplicationController
  def index
    @house = House.all
  end

  def new
    @house = House.new
  end

  def show
  end

  def edit
  end

  def _form
  end
end
