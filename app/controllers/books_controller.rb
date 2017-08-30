class BooksController < ApplicationController

  before_action :authorize!

  # GET /Books
  def index
    @books = Book.all
  end

  # GET /Books/1
  def show
    @book = Book.find(params[:id])
  end

  # GET /Books/new
  def new
    @book = Book.new
  end

  # GET /Books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # Book /Books
  def create
    @book = Book.new(Book_params)

    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /Books/1
  def update
    @book = Book.find(params[:id])
    if @book.update(Book_params)
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /Books/1
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to Books_url, notice: 'Book was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def Book_params
    params.require(:book).permit(:title, :author, :description, :url)
  end
end
