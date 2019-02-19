class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: :show

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to action: :show , notice: '作成しました'
    else
      redirect_to action: :show , flash: {error: '作成できませんでした'}
    end
  end

  def show
    @rooms = Room.all
    @room = Room.find(params[:id])
    @messages =  @room.messages
  end
end

private
  def room_params
    params.require(:room).permit(:name)
  end

  def set_user
    @user = current_user
  end