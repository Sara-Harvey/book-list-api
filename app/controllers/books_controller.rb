class BooksController < ApplicationController
	def index
		books = Book.all 
		options = {	include: [:category] }
		render json: BookSerializer.new(books, options) 
	end

    def show
      entry = Entry.find_by(id: params[:id])
        if entry
          options = { include: [:category] }
          render json: { entry: EntrySerializer.new(entry, options) }, status: 
          :accepted
        else
          render json: { errors: entry.errors.full_messages }, status: 
          :unprocessible_entity
        end
    end

	def create
		book = Book.new(book_params) 
		if book.save
			options = { include: [:category] }
			render json: BookSerializer.new(book, options), status: :accepted
		else
			render json: {errors: book.errors.full_messages}, status: :unprocessable_entity 
		end
	end 

	private
	def book_params
			params.require(:book).permit(:name, :author, :date, :note, :category_id)
		
	end
end