class RedsController < ApplicationController
  def index
    @reds = Red.all
  end

  def show
    @red = Red.find(params[:id])
  end

  def new
    @red = Red.new
  end

  def create
    @wine = Wine.new
    @wine.category = params[:category]
    @wine.name = params[:name]
    @wine.user_id = params[:user_id]
    @wine.fellow_imbibers = params[:fellow_imbibers]
    @wine.favorite = params[:favorite]
    @wine.year = params[:year]
    @wine.rating = params[:rating]
    @wine.notes = params[:notes]
    @wine.grape = params[:grape]
    @wine.country = params[:country]
    @wine.photo = params[:photo]

    if @wine.save
      redirect_to "/wines", :notice => "Wine created successfully."
    else
      render 'new'
    end
  end

  def edit
    @wine = Wine.find(params[:id])
  end

  def update
    @wine = Wine.find(params[:id])

    @wine.category = params[:category]
    @wine.name = params[:name]
    @wine.user_id = params[:user_id]
    @wine.fellow_imbibers = params[:fellow_imbibers]
    @wine.favorite = params[:favorite]
    @wine.year = params[:year]
    @wine.rating = params[:rating]
    @wine.notes = params[:notes]
    @wine.grape = params[:grape]
    @wine.country = params[:country]
    @wine.photo = params[:photo]

    if @wine.save
      redirect_to "/wines", :notice => "Wine updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @wine = Wine.find(params[:id])

    @wine.destroy

    redirect_to "/wines", :notice => "Wine deleted."
  end
end