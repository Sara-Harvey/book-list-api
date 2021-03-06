class CategoriesController < ApplicationController

  def index
    categories = Category.all 
    render json: StorySerializer.new(categories) 
  end

  private
  def category_params
      params.require(:category).permit(:name)    
  end

end
