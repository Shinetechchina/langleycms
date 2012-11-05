class BookingsController < ApplicationController

  def show
    $book_type=params[:book_type]
    $weeks=params[:weeks]
    $adults=params[:adults]
    $children=params[:children]

    Booking.where(:id => 1).each do |booking|
      booking.location = @book_type
      booking.number_adults = @adults
      booking.number_children = @children
      booking.number_weeks = @weeks
      booking.save
    end

    respond_to do |format|
        format.html { redirect_to("/book-a-trip") }
    end
  end

end


