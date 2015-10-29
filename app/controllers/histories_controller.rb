class HistoriesController < ApplicationController
  def index
    @foods = Food.search(params[:search])
    @exercises = Exercise.search(params[:search])
  end
end
