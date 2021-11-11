class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  # GET /restaurants/id
  def show
    @list = List.find(params[:id])
  end

  # GET /restaurants/new
  def new
    @list = List.new
  end

  # POST /restaurants
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  private
  # Only allow a list of trusted parameters through.
  def list_params
    params.require(:list).permit(:name)
  end
end
