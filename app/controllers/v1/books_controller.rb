class V1::BooksController < ApplicationController
    def index
      @books = Book.all
      render json: @books, status: :ok
    end

    def show
        @book = Book.find(params[:id])
        render json: @book
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            render json: @book
        else
            render json: {error: @book.errors} 
        end 
    end 

    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            render json: @book
        else
            render json: {errors: @book.errors}
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        render json: {destroy: @book}
    end
    
    private 
        def book_params
            params.require(:book).permit(:title, :author, :weight, :publisher, :language, :pages, :publication_date, :editorial)
        end
end