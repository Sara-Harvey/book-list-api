class StoriesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    stories = Story.all 
    options = { include: [:category] }
    render json: StorySerializer.new(stories, options) 
  end

    def show
      story = Story.find_by(id: params[:id])
        if story
          options = { include: [:category] }
          render json: { story: StorySerializer.new(story, options) }, status: 
          :accepted
        else
          render json: { errors: story.errors.full_messages }, status: 
          :unprocessible_entity
        end
    end

  def create
    story = Story.new(story_params) 
    if story.save
      options = { include: [:category] }
      render json: StorySerializer.new(story, options), status: :accepted
    else
      render json: {errors: story.errors.full_messages}, status: :unprocessable_entity 
    end
  end

  def destroy
    story = Story.find(params[:id])
    story.destroy
    render json: story
  end

  def update 
    story = Story.find(params[:id])
    story.update(story_params)
      if story.save    
        render json: story, status: 200
      else
        render json: { errors: story.errors.full_messages }, 
        status: :unprocessible_entity
      end
  end

  private
  def story_params
      params.require(:story).permit(:name, :description, :link, :category_id)    
  end
end