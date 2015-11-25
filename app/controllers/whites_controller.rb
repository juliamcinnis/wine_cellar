class WhitesController < ApplicationController
  def index
    @whites = White.all
  end

  def show
    @white = White.find(params[:id])
  end

  def new
    @white = White.new
  end

  def create
    @white = White.new
    @white.category = params[:category]
    @white.name = params[:name]
    @wine.user_id = params[:user_id]
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