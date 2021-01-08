class StoriesController < ApplicationController
	
	def index
		stories = Story.all 
		options = {	include: [:category] }
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

	private
	def story_params
			params.require(:story).permit(:name, :description, :link, :category_id)
		
	end
end