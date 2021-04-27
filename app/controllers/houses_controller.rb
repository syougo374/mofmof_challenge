class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]
  def index
    @houses = House.all
  end

  def new
    @house = House.new
    # 2.time { @house.stations.build}
  end

  def create
    @house = House.new(house_params)
    if params[:back]
      render :new
    else
      if @house.save
        redirect_to houses_path,notice: "物件を登録しました"
      else
      render :new
      end
    end  
  end

  def show

    @stations = @house.stations
  end

  def edit
  end

  def destroy
    @house.destroy
    redirect_to houses_path, notice: '物件を削除しました'
  end


  private
  def set_house
    @house = House.find(params[:id])
  end

  def house_params
    params.require(:house).permit(:property_name,:price,:street_address,:age_building,:remarks)
  end
end
