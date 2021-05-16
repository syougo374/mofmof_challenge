class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]
  def index
    @houses = House.all
  end

  def new
    @house = House.new
    2.times { @house.stations.build}
  end

  def create
    @house = House.new(house_params)
    # if params[:back]
    #   render :new
    # else
      if @house.save
        redirect_to houses_path,notice: "物件を登録しました"

        
      else
        render :new
      end
    end  
  # end

  def show
    @stations = @house.stations

  end

  def edit
    @house.stations.build
  end

  def destroy
    @house.destroy
    redirect_to houses_path, notice: '物件を削除しました'
  end

  def update
    if @house.update(house_params)
      redirect_to houses_path, notice: "物件を編集しました！"
    else
      render :edit
    end
  end


  private
  def set_house
    @house = House.find(params[:id])
  end

  def house_params
    params.require(:house).permit(:property_name,:price,:street_address,:age_building,:remarks, stations_attributes: [:id,:route_name,:station_name,:minutes_on_foot])
  end
end
