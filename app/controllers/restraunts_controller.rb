class RestrauntsController < ApplicationController
  def index
    @restraunts = Restraunt.all
  end

  def show
    @restraunt = Restraunt.find(params[:id])
  end

  def create
    @restraunt = Restraunt.new(restraunt_params)

    if @restraunt.save
      flash[:notice] = "Created new restraunt!"
      redirect_to restraunt_path(@restraunt)
    else
      render :new
    end

  end

  def new
    @restraunt = Restraunt.new
  end

  private

  def restraunt_params
    params.require(:restraunt).
      permit(:name, :address, :city, :state, :zip_code, :description, :category)
  end
end
