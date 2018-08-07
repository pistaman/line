class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to action: :index , notice: '作成しました'
    else
      redirect_to action: :index , flash: {error: '作成できませんでした'}
    end
  end

  def show
    @room = Room.find(params[:id])
    @messages =  @room.messages
  end
end

private
  def room_params
    params.require(:room).permit(:name)
  end