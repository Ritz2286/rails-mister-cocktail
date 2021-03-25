class CocktailsController < ApplicationController

  def index
    if params[:query].present?
      @query = params[:query]
      @cocktails = Cocktail.where("name LIKE ?", "%#{params[:query]}%")
    else
    @cocktails = Cocktail.all
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @review = Review.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render 'new'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image_url)
  end
end
