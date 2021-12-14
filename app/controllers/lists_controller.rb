class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all.sort_by(&:name)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), notice: 'List created!'
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
