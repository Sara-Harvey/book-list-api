class BooksController < ApplicationController
	def index
		books = Book.all options = {
		include: [:category] }
		render json: BookSerializer.new(books) 
	end

	def create
		book = Book.new(book_params) 
		if book.save
			render json: BookSerializer.new(book), status: :accepted
		else
			render json: {errors: book.errors.full_messages}, status: :unprocessable_entity 
		end
	end 

	private
		def book_params
			params.require(:book).permit(:name, :author, :date, :note, :category_id)
		end 
	end
end
