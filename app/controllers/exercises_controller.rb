class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render :index
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render :show
  end

  def create
    @exercise = Exercise.create(
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url],
      video_url: params[:video_url],
    )
    render :show
  end

  def destroy
    @exercis = Exercise.find_by_id(id: params[:id])
    @exercise.destroy
    render json: {message: "exercise has been deleted successfully"}
  end

  def update 
    @exercise = Exercise.find_by_id(params[:id])
    @exercise.update(
      name: params[:name] || @exercise.name,
      description: params[:description] || @exercise.description,
      image_url: params[:image_url] || @exercise.image_url,
      video_url: params[:video_url] || @exercise.video_url
    )
    render :show
  end
end
