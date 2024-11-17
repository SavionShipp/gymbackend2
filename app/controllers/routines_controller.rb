class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
    # Routine.where(user_id: current_user.id)
    render :index
  end

  def show 
    @routine = Routine.find_by(id: params[":id"])
    render :show
  end

  def destroy
    @routine = Routine.find_by(id params[":id"])
    @routine.destroy
    render json: {message: "routine has been deleted"}
  end

  def create
    @routine = Routine.new(
      user_id: current_user.id,
      exercise_id: params[:exercise_id],
      reps: params[:reps],
      sets: params[:sets]
    )
    @routine.save
    render :show
  end
end
