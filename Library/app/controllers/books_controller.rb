class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def patron_index
        @books = Book.all
    end

    def checkout
        @book = Book.find(params[:id])
        @book.update(copies: @book.copies - 1)
        redirect_to @book
    end

    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new
    end

    def new_review
    end

    def create
        @book = Book.new(book_params)

        if @book.save
            redirect_to @book
        else 
            render 'new'
        end
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :isbn, :copies, :reviewName, :reviewText)
    end
end
