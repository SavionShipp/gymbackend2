class HeartsController < ApplicationController

  def create
    @heart = Heart.new(
      user_id: params[:user_id],
      exercise_id: params[:exercise_id],
      routine_id: params[:routine_id]
    )
    @heart.save
    render :show
  end

  def index
    @hearts = Heart.all
    render :index
  end

end
