class BooksController < ApplicationController
  def create
    book = Book.new(book_params)
    # book.save
    # redirect_to '/books'
    
    if book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(book.id)
    else
      # redirect_to '/books'
      @book = book
      @books =Book.all
      render :index
    end
    
    
  end

  def index
    @book = Book.new
    @books =Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    # flash[:notice] = "Book was successfully updated."
     book = Book.find(params[:id])
    # book.update(book_params)
    # redirect_to "/books/#{book.id}"
    
    if book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(book.id)
    else
      # redirect_to '/books'
      @book = book
      render :edit
    end
    
    
  end
  
  def destroy
    flash[:notice] = "Book was successfully destroyed."
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
