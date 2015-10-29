class HistoriesController < ApplicationController
  def index
    @exercises = Exercise.all
    @foods = Food.all
  end
end
