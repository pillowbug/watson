class ShowsController < ApplicationController
  before_action :set_show, only: %i[edit update]
  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to show_path(@show)
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
  end

  private

  def show_params
    params.require(:show).permit(:title, :description, :tags)
  end

  def set_show
    @show = Show.find(params[:id])
  end

end

